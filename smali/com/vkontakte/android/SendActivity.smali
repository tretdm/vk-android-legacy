.class public Lcom/vkontakte/android/SendActivity;
.super Landroid/app/Activity;
.source "SendActivity.java"


# static fields
.field private static final FILTER_RESULT:I = 0x65

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

    .line 201
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

    .line 202
    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/SendActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 203
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 204
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 205
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

    .line 209
    array-length v3, p2

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 211
    :goto_1
    return v1

    .line 209
    :cond_0
    aget-object v0, p2, v2

    .line 210
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 209
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private notSupported()V
    .locals 2

    .prologue
    .line 215
    const v0, 0x7f06008f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 216
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 139
    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v0, "nIntent":Landroid/content/Intent;
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

    .line 142
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "text"

    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    .end local v0    # "nIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->finish()V

    .line 147
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 33
    :try_start_0
    const-class v9, Landroid/app/Activity;

    const-string v10, "overridePendingTransition"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 34
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 42
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 43
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 45
    .local v8, "stream":Landroid/net/Uri;
    if-nez v8, :cond_1

    .line 46
    const-string v9, "vk"

    const-string v10, "Stream URI is null, nothing to share, closing."

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->finish()V

    .line 136
    .end local v8    # "stream":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 51
    .restart local v8    # "stream":Landroid/net/Uri;
    :cond_1
    const-string v9, "content"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 52
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 53
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

    .line 54
    if-eqz v0, :cond_2

    .line 55
    const-string v9, "image/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 56
    const-string v9, "vk"

    const-string v10, "Sending as a photo"

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v2, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v2, "fIntent":Landroid/content/Intent;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    const/16 v9, 0x65

    invoke-virtual {p0, v2, v9}, Lcom/vkontakte/android/SendActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    .line 135
    .end local v0    # "ctype":Ljava/lang/String;
    .end local v2    # "fIntent":Landroid/content/Intent;
    .end local v8    # "stream":Landroid/net/Uri;
    :cond_2
    :goto_2
    iget-boolean v9, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->finish()V

    goto :goto_1

    .line 64
    .restart local v0    # "ctype":Ljava/lang/String;
    .restart local v8    # "stream":Landroid/net/Uri;
    :cond_3
    const-string v9, "audio/mpeg"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 65
    const-string v9, "vk"

    const-string v10, "Sending as an audio file"

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v6, "nIntent":Landroid/content/Intent;
    const-string v9, "file"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "req_params"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    const-string v9, "type"

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    .line 72
    .end local v6    # "nIntent":Landroid/content/Intent;
    .end local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    const-string v9, "video/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 73
    const-string v9, "vk"

    const-string v10, "Sending as a video"

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    .line 75
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->showVideoDialog()V

    goto :goto_2

    .line 78
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

    .line 79
    :cond_6
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "filename":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 81
    const-string v9, "\\."

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "fparts":[Ljava/lang/String;
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "ext":Ljava/lang/String;
    sget-object v9, Lcom/vkontakte/android/SendActivity;->imageExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/vkontakte/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 88
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v2, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .restart local v2    # "fIntent":Landroid/content/Intent;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v9, "android.intent.extra.STREAM"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    const/16 v9, 0x65

    invoke-virtual {p0, v2, v9}, Lcom/vkontakte/android/SendActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 94
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    goto/16 :goto_2

    .line 95
    .end local v2    # "fIntent":Landroid/content/Intent;
    :cond_7
    sget-object v9, Lcom/vkontakte/android/SendActivity;->audioExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/vkontakte/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 96
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .restart local v6    # "nIntent":Landroid/content/Intent;
    const-string v9, "file"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 99
    .restart local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "req_params"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    const-string v9, "type"

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 102
    .end local v6    # "nIntent":Landroid/content/Intent;
    .end local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    sget-object v9, Lcom/vkontakte/android/SendActivity;->videoExtensions:[Ljava/lang/String;

    invoke-direct {p0, v1, v9}, Lcom/vkontakte/android/SendActivity;->isInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 103
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/vkontakte/android/SendActivity;->needFinish:Z

    .line 104
    invoke-virtual {p0}, Lcom/vkontakte/android/SendActivity;->showVideoDialog()V

    goto/16 :goto_2

    .line 106
    :cond_9
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .restart local v6    # "nIntent":Landroid/content/Intent;
    const-string v9, "file"

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 109
    .restart local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "req_params"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 110
    const-string v9, "type"

    const/4 v10, 0x4

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SendActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 116
    .end local v1    # "ext":Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "fparts":[Ljava/lang/String;
    .end local v6    # "nIntent":Landroid/content/Intent;
    .end local v7    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const-string v9, "vk"

    const-string v10, "URI has an unsupported scheme"

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/vkontakte/android/SendActivity;->notSupported()V

    goto/16 :goto_2

    .line 119
    .end local v8    # "stream":Landroid/net/Uri;
    :cond_b
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 120
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .restart local v6    # "nIntent":Landroid/content/Intent;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v9, "text"

    const-string v10, "android.intent.extra.TEXT"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v9, "android.intent.extra.SUBJECT"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 129
    const-string v9, "link_title"

    const-string v10, "android.intent.extra.SUBJECT"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :cond_c
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/SendActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 132
    .end local v6    # "nIntent":Landroid/content/Intent;
    :cond_d
    invoke-direct {p0}, Lcom/vkontakte/android/SendActivity;->notSupported()V

    goto/16 :goto_2

    .line 35
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method

.method public showVideoDialog()V
    .locals 7

    .prologue
    .line 150
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    .local v1, "ll":Landroid/widget/LinearLayout;
    const/high16 v4, 0x40e00000    # 7.0f

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 152
    .local v2, "padding":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 153
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 155
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 156
    .local v3, "titleEdit":Landroid/widget/EditText;
    const v4, 0x7f060091

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 157
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
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

    .line 163
    :goto_0
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "descrEdit":Landroid/widget/EditText;
    const v4, 0x7f060092

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 165
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 167
    new-instance v4, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    const v5, 0x7f060090

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 169
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 170
    const v5, 0x7f060028

    new-instance v6, Lcom/vkontakte/android/SendActivity$1;

    invoke-direct {v6, p0, v3, v0}, Lcom/vkontakte/android/SendActivity$1;-><init>(Lcom/vkontakte/android/SendActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 184
    const v5, 0x7f060027

    new-instance v6, Lcom/vkontakte/android/SendActivity$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/SendActivity$2;-><init>(Lcom/vkontakte/android/SendActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 190
    new-instance v5, Lcom/vkontakte/android/SendActivity$3;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/SendActivity$3;-><init>(Lcom/vkontakte/android/SendActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 196
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 197
    return-void

    .line 161
    .end local v0    # "descrEdit":Landroid/widget/EditText;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
