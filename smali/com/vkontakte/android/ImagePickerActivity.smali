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

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ImagePickerActivity;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/vkontakte/android/ImagePickerActivity;->startGallery()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ImagePickerActivity;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/vkontakte/android/ImagePickerActivity;->startCamera()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ImagePickerActivity;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/vkontakte/android/ImagePickerActivity;->startAlbum()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ImagePickerActivity;I)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ImagePickerActivity;->customSelected(I)V

    return-void
.end method

.method private customSelected(I)V
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "option"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->finish()V

    .line 120
    return-void
.end method

.method private startAlbum()V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "PhotoAlbumsListFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 112
    const/16 v2, 0x67

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/ImagePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
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
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "selection_limit"

    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "limit"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0, v4}, Lcom/vkontakte/android/ImagePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 104
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

    .line 140
    if-ne p2, v6, :cond_7

    iget-object v4, p0, Lcom/vkontakte/android/ImagePickerActivity;->tempPhotoURI:Landroid/net/Uri;

    if-nez v4, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "photo"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "images"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 141
    :cond_0
    const/16 v4, 0x64

    if-ne p1, v4, :cond_1

    .line 147
    const-string v4, "images"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 148
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v3, "res":Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 150
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 154
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/vkontakte/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 155
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->finish()V

    .line 157
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "res":Landroid/content/Intent;
    :cond_1
    const/16 v4, 0x65

    if-ne p1, v4, :cond_2

    .line 166
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v4, "android.intent.extra.STREAM"

    iget-object v5, p0, Lcom/vkontakte/android/ImagePickerActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v1, v8}, Lcom/vkontakte/android/ImagePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 171
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    if-ne p1, v8, :cond_3

    .line 172
    const-string v4, "images"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 173
    .restart local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 174
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v6, v1}, Lcom/vkontakte/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->finish()V

    .line 178
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v4, 0x66

    if-ne p1, v4, :cond_4

    .line 179
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 180
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/vkontakte/android/ImagePickerActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v6, v1}, Lcom/vkontakte/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->finish()V

    .line 184
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const/16 v4, 0x67

    if-ne p1, v4, :cond_5

    .line 185
    const-string v4, "photo"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Photo;

    .line 186
    .local v2, "photo":Lcom/vkontakte/android/Photo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 187
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "attachment"

    new-instance v5, Lcom/vkontakte/android/PhotoAttachment;

    invoke-direct {v5, v2}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Lcom/vkontakte/android/Photo;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v6, v1}, Lcom/vkontakte/android/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->finish()V

    .line 195
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "photo":Lcom/vkontakte/android/Photo;
    :cond_5
    :goto_1
    return-void

    .line 152
    .restart local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "res":Landroid/content/Intent;
    :cond_6
    const-string v4, "files"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 192
    .end local v0    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "res":Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ImagePickerActivity;->setResult(I)V

    .line 193
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

    const v3, 0x7f0601b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v2, "g"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0}, Lcom/vkontakte/android/ImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601b7

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

    const v3, 0x7f06021f

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

    .line 57
    const v3, 0x7f060022

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 58
    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/vkontakte/android/ImagePickerActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/vkontakte/android/ImagePickerActivity$1;-><init>(Lcom/vkontakte/android/ImagePickerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 75
    new-instance v3, Lcom/vkontakte/android/ImagePickerActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ImagePickerActivity$2;-><init>(Lcom/vkontakte/android/ImagePickerActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
