.class public Lcom/vkontakte/android/ImagePickerActivity;
.super Landroid/app/Activity;
.source "ImagePickerActivity.java"


# static fields
.field private static final ALBUM_RESULT:I = 0x67

.field private static final CAMERA_RESULT:I = 0x65

.field private static final CROP_RESULT:I = 0x66

.field private static final FILTER_RESULT:I = 0x68

.field private static final GALLERY_RESULT:I = 0x64


# instance fields
.field private crop:Z

.field private tempPhotoURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ImagePickerActivity;->crop:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/ImagePickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ImagePickerActivity;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vkontakte/android/ImagePickerActivity;->startGallery()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ImagePickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ImagePickerActivity;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vkontakte/android/ImagePickerActivity;->startCamera()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ImagePickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ImagePickerActivity;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vkontakte/android/ImagePickerActivity;->startAlbum()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/ImagePickerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ImagePickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ImagePickerActivity;->customSelected(I)V

    return-void
.end method

.method private customSelected(I)V
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "option"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->finish()V

    .line 125
    return-void
.end method

.method private startAlbum()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    const-string v2, "need_system"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "PhotoAlbumsFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 117
    const/16 v2, 0x67

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/ImagePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 118
    return-void
.end method

.method private startCamera()V
    .locals 4

    .prologue
    .line 86
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    const-string v3, "tmp"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/ImagePickerActivity;->tempPhotoURI:Landroid/net/Uri;

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "camIntent":Landroid/content/Intent;
    const-string v2, "output"

    iget-object v3, p0, Lcom/vkontakte/android/ImagePickerActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 91
    const/16 v2, 0x65

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/ImagePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "camIntent":Landroid/content/Intent;
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private startGallery()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "selection_limit"

    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "limit"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 103
    const-string v1, "single_mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    :cond_0
    const-string v1, "no_thumbs"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "no_thumbs"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    :cond_1
    invoke-virtual {p0, v0, v6}, Lcom/vkontakte/android/ImagePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 108
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "reqCode"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x68

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 145
    if-ne p2, v6, :cond_6

    .line 146
    const/16 v4, 0x64

    if-ne p1, v4, :cond_0

    if-eqz p3, :cond_0

    const-string v4, "images"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    const-string v4, "images"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 153
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v3, "res":Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 156
    const-string v5, "file"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/vkontakte/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->finish()V

    .line 163
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "res":Landroid/content/Intent;
    :cond_0
    const/16 v4, 0x65

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/ImagePickerActivity;->tempPhotoURI:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/vkontakte/android/ImagePickerActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v1, v8}, Lcom/vkontakte/android/ImagePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    if-ne p1, v8, :cond_2

    if-eqz p3, :cond_2

    const-string v4, "images"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 178
    const-string v4, "images"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 179
    .restart local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 180
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "file"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v6, v1}, Lcom/vkontakte/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->finish()V

    .line 184
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/16 v4, 0x66

    if-ne p1, v4, :cond_3

    .line 185
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 186
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "file"

    iget-object v5, p0, Lcom/vkontakte/android/ImagePickerActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v6, v1}, Lcom/vkontakte/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->finish()V

    .line 190
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v4, 0x67

    if-ne p1, v4, :cond_4

    .line 191
    const-string v4, "photo"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Photo;

    .line 192
    .local v2, "photo":Lcom/vkontakte/android/Photo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 193
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "attachment"

    new-instance v5, Lcom/vkontakte/android/PhotoAttachment;

    invoke-direct {v5, v2}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v6, v1}, Lcom/vkontakte/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->finish()V

    .line 201
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "photo":Lcom/vkontakte/android/Photo;
    :cond_4
    :goto_1
    return-void

    .line 158
    .restart local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "res":Landroid/content/Intent;
    :cond_5
    const-string v4, "files"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 198
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "res":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ImagePickerActivity;->setResult(I)V

    .line 199
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->finish()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0, v4, v4}, Lcom/vkontakte/android/ImagePickerActivity;->overridePendingTransition(II)V

    .line 32
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "crop"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vkontakte/android/ImagePickerActivity;->crop:Z

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v2, "g"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "allow_album"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "custom"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "custom"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 48
    invoke-direct {p0}, Lcom/vkontakte/android/ImagePickerActivity;->startCamera()V

    .line 82
    :goto_0
    return-void

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 52
    invoke-direct {p0}, Lcom/vkontakte/android/ImagePickerActivity;->startGallery()V

    goto :goto_0

    .line 56
    :cond_3
    new-instance v2, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d002f

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/vkontakte/android/ImagePickerActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/vkontakte/android/ImagePickerActivity$2;-><init>(Lcom/vkontakte/android/ImagePickerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/ImagePickerActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ImagePickerActivity$1;-><init>(Lcom/vkontakte/android/ImagePickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
