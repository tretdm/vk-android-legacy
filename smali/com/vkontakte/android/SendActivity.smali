.class public Lcom/vkontakte/android/SendActivity;
.super Landroid/app/Activity;
.source "SendActivity.java"


# static fields
.field private static final audioExtensions:[Ljava/lang/String;

.field private static final docExtensions:[Ljava/lang/String;

.field private static final imageExtensions:[Ljava/lang/String;

.field private static final videoExtensions:[Ljava/lang/String;


# instance fields
.field needFinish:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "jpg"

    aput-object v1, v0, v3

    const-string v1, "jpeg"

    aput-object v1, v0, v4

    const-string v1, "png"

    aput-object v1, v0, v5

    const-string v1, "gif"

    aput-object v1, v0, v6

    sput-object v0, Lcom/vkontakte/android/SendActivity;->imageExtensions:[Ljava/lang/String;

    .line 24
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mp3"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vkontakte/android/SendActivity;->audioExtensions:[Ljava/lang/String;

    .line 25
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "avi"

    aput-object v1, v0, v3

    const-string v1, "mp4"

    aput-object v1, v0, v4

    const-string v1, "3gp"

    aput-object v1, v0, v5

    const-string v1, "mpeg"

    aput-object v1, v0, v6

    const-string v1, "mov"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "flv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wmv"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/SendActivity;->videoExtensions:[Ljava/lang/String;

    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "doc"

    aput-object v1, v0, v3

    const-string v1, "docx"

    aput-object v1, v0, v4

    const-string v1, "xls"

    aput-object v1, v0, v5

    const-string v1, "xlsx"

    aput-object v1, v0, v6

    const-string v1, "ppt"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pptx"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rtf"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pdf"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "png"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "gif"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "psd"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mp3"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "djvu"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fb2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ps"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/SendActivity;->docExtensions:[Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    .line 19
    return-void
.end method

.method private getTitleFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 178
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "title"

    aput-object v1, v2, v0

    .local v2, "proj":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 179
    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/SendActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 180
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 181
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 182
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isInArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 186
    array-length v3, p2

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 188
    :goto_1
    return v1

    .line 186
    :cond_0
    aget-object v0, p2, v2

    .line 187
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 186
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private notSupported()V
    .locals 2

    .prologue
    .line 192
    const v0, 0x7f0900a8

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 31
    :try_start_0
    const-class v8, Landroid/app/Activity;

    const-string v9, "overridePendingTransition"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 32
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v8, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 40
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 41
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 43
    .local v7, "stream":Landroid/net/Uri;
    if-nez v7, :cond_1

    .line 44
    const-string v8, "vk"

    const-string v9, "Stream URI is null, nothing to share, closing."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->finish()V

    .line 124
    .end local v7    # "stream":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 49
    .restart local v7    # "stream":Landroid/net/Uri;
    :cond_1
    const-string v8, "content"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 50
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "ctype":Ljava/lang/String;
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Send Type="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-eqz v0, :cond_3

    .line 53
    const-string v8, "image/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 54
    const-string v8, "vk"

    const-string v9, "Sending as a photo"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v5, "nIntent":Landroid/content/Intent;
    const-string v8, "photoURI"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 58
    const-string v8, "text"

    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    :cond_2
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SendActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    .end local v0    # "ctype":Ljava/lang/String;
    .end local v5    # "nIntent":Landroid/content/Intent;
    .end local v7    # "stream":Landroid/net/Uri;
    :cond_3
    :goto_2
    iget-boolean v8, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->finish()V

    goto :goto_1

    .line 60
    .restart local v0    # "ctype":Ljava/lang/String;
    .restart local v7    # "stream":Landroid/net/Uri;
    :cond_4
    const-string v8, "audio/mpeg"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 61
    const-string v8, "vk"

    const-string v9, "Sending as an audio file"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v8, Lcom/vkontakte/android/CustomTitleActivityImpl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v10}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    invoke-virtual {v8}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 63
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .restart local v5    # "nIntent":Landroid/content/Intent;
    const-string v8, "file"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "req_params"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 67
    const-string v8, "type"

    const/4 v9, 0x3

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 69
    .end local v5    # "nIntent":Landroid/content/Intent;
    .end local v6    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string v8, "video/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 70
    const-string v8, "vk"

    const-string v9, "Sending as a video"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v8, Lcom/vkontakte/android/CustomTitleActivityImpl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v10}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    invoke-virtual {v8}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 72
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    .line 73
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->showVideoDialog()V

    goto :goto_2

    .line 76
    .end local v0    # "ctype":Ljava/lang/String;
    :cond_6
    const-string v8, "file"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_c

    .line 77
    :cond_7
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "filename":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 79
    const-string v8, "\\."

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "fparts":[Ljava/lang/String;
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "ext":Ljava/lang/String;
    sget-object v8, Lcom/vkontakte/android/SendActivity;->imageExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v8}, Lcom/vkontakte/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 83
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .restart local v5    # "nIntent":Landroid/content/Intent;
    const-string v8, "photoURI"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SendActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 86
    .end local v5    # "nIntent":Landroid/content/Intent;
    :cond_8
    sget-object v8, Lcom/vkontakte/android/SendActivity;->audioExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v8}, Lcom/vkontakte/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 87
    new-instance v8, Lcom/vkontakte/android/CustomTitleActivityImpl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v10}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    invoke-virtual {v8}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 88
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .restart local v5    # "nIntent":Landroid/content/Intent;
    const-string v8, "file"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 91
    .restart local v6    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "req_params"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 92
    const-string v8, "type"

    const/4 v9, 0x3

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 94
    .end local v5    # "nIntent":Landroid/content/Intent;
    .end local v6    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    sget-object v8, Lcom/vkontakte/android/SendActivity;->videoExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v8}, Lcom/vkontakte/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 95
    new-instance v8, Lcom/vkontakte/android/CustomTitleActivityImpl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v10}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    invoke-virtual {v8}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 96
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    .line 97
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->showVideoDialog()V

    goto/16 :goto_2

    .line 98
    :cond_a
    sget-object v8, Lcom/vkontakte/android/SendActivity;->docExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v8}, Lcom/vkontakte/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 99
    new-instance v8, Lcom/vkontakte/android/CustomTitleActivityImpl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v10}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    invoke-virtual {v8}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 100
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .restart local v5    # "nIntent":Landroid/content/Intent;
    const-string v8, "file"

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 103
    .restart local v6    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "req_params"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    const-string v8, "type"

    const/4 v9, 0x4

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 107
    .end local v5    # "nIntent":Landroid/content/Intent;
    .end local v6    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    invoke-direct {p0}, Lcom/vkontakte/android/SendActivity;->notSupported()V

    goto/16 :goto_2

    .line 110
    .end local v1    # "ext":Ljava/lang/String;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "fparts":[Ljava/lang/String;
    :cond_c
    const-string v8, "vk"

    const-string v9, "URI has an unsupported scheme"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/vkontakte/android/SendActivity;->notSupported()V

    goto/16 :goto_2

    .line 113
    .end local v7    # "stream":Landroid/net/Uri;
    :cond_d
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 114
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .restart local v5    # "nIntent":Landroid/content/Intent;
    const-string v8, "text"

    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v8, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 117
    const-string v8, "link_title"

    const-string v9, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    :cond_e
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SendActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 120
    .end local v5    # "nIntent":Landroid/content/Intent;
    :cond_f
    invoke-direct {p0}, Lcom/vkontakte/android/SendActivity;->notSupported()V

    goto/16 :goto_2

    .line 33
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method public showVideoDialog()V
    .locals 7

    .prologue
    .line 127
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/high16 v4, 0x40e00000    # 7.0f

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 129
    .local v2, "padding":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 130
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 132
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 133
    .local v3, "titleEdit":Landroid/widget/EditText;
    const v4, 0x7f0900aa

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 134
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/vkontakte/android/SendActivity;->getTitleFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, "descrEdit":Landroid/widget/EditText;
    const v4, 0x7f0900ab

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 142
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    const v5, 0x7f0900a9

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 146
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 147
    const v5, 0x7f09001d

    new-instance v6, Lcom/vkontakte/android/SendActivity$1;

    invoke-direct {v6, p0, v3, v0}, Lcom/vkontakte/android/SendActivity$1;-><init>(Lcom/vkontakte/android/SendActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 161
    const v5, 0x7f09001c

    new-instance v6, Lcom/vkontakte/android/SendActivity$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SendActivity$2;-><init>(Lcom/vkontakte/android/SendActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 167
    new-instance v5, Lcom/vkontakte/android/SendActivity$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/SendActivity$3;-><init>(Lcom/vkontakte/android/SendActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 173
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 174
    return-void

    .line 138
    .end local v0    # "descrEdit":Landroid/widget/EditText;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
