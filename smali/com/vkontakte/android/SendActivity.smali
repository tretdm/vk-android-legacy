.class public Lcom/vkontakte/android/SendActivity;
.super Landroid/app/Activity;
.source "SendActivity.java"


# static fields
.field private static final FILTER_RESULT:I = 0x65

.field private static final TYPE_AUDIO:I = 0x3

.field private static final TYPE_FILE:I = 0x4

.field private static final TYPE_IMAGE:I = 0x1

.field private static final TYPE_TEXT:I = 0x0

.field private static final TYPE_VIDEO:I = 0x2

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

    .line 25
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

    .line 26
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mp3"

    aput-object v1, v0, v3

    sput-object v0, Lcom/vkontakte/android/SendActivity;->audioExtensions:[Ljava/lang/String;

    .line 27
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

    .line 28
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

    .line 34
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

    .line 218
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

    .line 219
    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/SendActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 220
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 221
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 222
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

    .line 226
    array-length v3, p2

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 228
    :goto_1
    return v1

    .line 226
    :cond_0
    aget-object v0, p2, v2

    .line 227
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 226
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private notSupported()V
    .locals 2

    .prologue
    .line 232
    const v0, 0x7f0800a9

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    return-void
.end method

.method private processIntent()V
    .locals 15

    .prologue
    const/16 v14, 0x65

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 50
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 51
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 53
    .local v8, "stream":Landroid/net/Uri;
    if-nez v8, :cond_1

    .line 54
    const-string v9, "vk"

    const-string v10, "Stream URI is null, nothing to share, closing."

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->finish()V

    .line 142
    .end local v8    # "stream":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v8    # "stream":Landroid/net/Uri;
    :cond_1
    const-string v9, "content"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 60
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "ctype":Ljava/lang/String;
    const-string v9, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Send Type="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-eqz v0, :cond_2

    .line 63
    const-string v9, "image/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 64
    const-string v9, "vk"

    const-string v10, "Sending as a photo"

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v2, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v2, "fIntent":Landroid/content/Intent;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v2, v14}, Lcom/vkontakte/android/SendActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    iput-boolean v12, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    .line 141
    .end local v0    # "ctype":Ljava/lang/String;
    .end local v2    # "fIntent":Landroid/content/Intent;
    .end local v8    # "stream":Landroid/net/Uri;
    :cond_2
    :goto_1
    iget-boolean v9, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->finish()V

    goto :goto_0

    .line 70
    .restart local v0    # "ctype":Ljava/lang/String;
    .restart local v8    # "stream":Landroid/net/Uri;
    :cond_3
    const-string v9, "audio/mpeg"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 71
    const-string v9, "vk"

    const-string v10, "Sending as an audio file"

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v6, "nIntent":Landroid/content/Intent;
    const-string v9, "file"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "req_params"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    const-string v9, "type"

    invoke-virtual {v6, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 78
    .end local v6    # "nIntent":Landroid/content/Intent;
    .end local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string v9, "video/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 79
    const-string v9, "vk"

    const-string v10, "Sending as a video"

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput-boolean v12, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->showVideoDialog()V

    goto :goto_1

    .line 84
    .end local v0    # "ctype":Ljava/lang/String;
    :cond_5
    const-string v9, "file"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_a

    .line 85
    :cond_6
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "filename":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 87
    const-string v9, "\\."

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "fparts":[Ljava/lang/String;
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "ext":Ljava/lang/String;
    sget-object v9, Lcom/vkontakte/android/SendActivity;->imageExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/vkontakte/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 94
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v2, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .restart local v2    # "fIntent":Landroid/content/Intent;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v2, v14}, Lcom/vkontakte/android/SendActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 100
    iput-boolean v12, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    goto/16 :goto_1

    .line 101
    .end local v2    # "fIntent":Landroid/content/Intent;
    :cond_7
    sget-object v9, Lcom/vkontakte/android/SendActivity;->audioExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/vkontakte/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 102
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .restart local v6    # "nIntent":Landroid/content/Intent;
    const-string v9, "file"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 105
    .restart local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "req_params"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 106
    const-string v9, "type"

    invoke-virtual {v6, v9, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 108
    .end local v6    # "nIntent":Landroid/content/Intent;
    .end local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    sget-object v9, Lcom/vkontakte/android/SendActivity;->videoExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/vkontakte/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 109
    iput-boolean v12, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    .line 110
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->showVideoDialog()V

    goto/16 :goto_1

    .line 112
    :cond_9
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .restart local v6    # "nIntent":Landroid/content/Intent;
    const-string v9, "file"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 115
    .restart local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "req_params"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 116
    const-string v9, "type"

    const/4 v10, 0x4

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 122
    .end local v1    # "ext":Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "fparts":[Ljava/lang/String;
    .end local v6    # "nIntent":Landroid/content/Intent;
    .end local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const-string v9, "vk"

    const-string v10, "URI has an unsupported scheme"

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/vkontakte/android/SendActivity;->notSupported()V

    goto/16 :goto_1

    .line 125
    .end local v8    # "stream":Landroid/net/Uri;
    :cond_b
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 126
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .restart local v6    # "nIntent":Landroid/content/Intent;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v9, "text"

    const-string v10, "android.intent.extra.TEXT"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v9, "android.intent.extra.SUBJECT"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 135
    const-string v9, "link_title"

    const-string v10, "android.intent.extra.SUBJECT"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_c
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SendActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 138
    .end local v6    # "nIntent":Landroid/content/Intent;
    :cond_d
    invoke-direct {p0}, Lcom/vkontakte/android/SendActivity;->notSupported()V

    goto/16 :goto_1
.end method

.method private showOptionsList(I)V
    .locals 0
    .param p1, "contentType"    # I

    .prologue
    .line 214
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 145
    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    if-ne p2, v4, :cond_1

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, "nIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v2, "photoURI"

    const-string v1, "images"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const-string v1, "text"

    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendActivity;->startActivity(Landroid/content/Intent;)V

    .line 153
    .end local v0    # "nIntent":Landroid/content/Intent;
    :cond_1
    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    .line 154
    if-ne p2, v4, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/vkontakte/android/SendActivity;->processIntent()V

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0, v0}, Lcom/vkontakte/android/SendActivity;->overridePendingTransition(II)V

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/SendActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/SendActivity;->processIntent()V

    goto :goto_0
.end method

.method public showVideoDialog()V
    .locals 7

    .prologue
    .line 163
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/high16 v4, 0x40e00000    # 7.0f

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 165
    .local v2, "padding":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 166
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 168
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 169
    .local v3, "titleEdit":Landroid/widget/EditText;
    const v4, 0x7f0800ab

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 170
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
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

    .line 176
    :goto_0
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, "descrEdit":Landroid/widget/EditText;
    const v4, 0x7f0800ac

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 178
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    const v5, 0x7f0800aa

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 182
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 183
    const v5, 0x7f080042

    new-instance v6, Lcom/vkontakte/android/SendActivity$1;

    invoke-direct {v6, p0, v3, v0}, Lcom/vkontakte/android/SendActivity$1;-><init>(Lcom/vkontakte/android/SendActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 197
    const v5, 0x7f080041

    new-instance v6, Lcom/vkontakte/android/SendActivity$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SendActivity$2;-><init>(Lcom/vkontakte/android/SendActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 203
    new-instance v5, Lcom/vkontakte/android/SendActivity$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/SendActivity$3;-><init>(Lcom/vkontakte/android/SendActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 209
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 210
    return-void

    .line 174
    .end local v0    # "descrEdit":Landroid/widget/EditText;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
