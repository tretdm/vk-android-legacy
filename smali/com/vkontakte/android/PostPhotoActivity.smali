.class public Lcom/vkontakte/android/PostPhotoActivity;
.super Landroid/app/Activity;
.source "PostPhotoActivity.java"


# static fields
.field private static final ALBUM_RESULT:I = 0x67

.field private static final MESSAGE_RESULT:I = 0x66

.field private static final PICKER_RESULT:I = 0x65


# instance fields
.field private aid:I

.field private msgReceiver:Lcom/vkontakte/android/UserProfile;

.field private option:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PostPhotoActivity;I)V
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PostPhotoActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vkontakte/android/PostPhotoActivity;->processOption()V

    return-void
.end method

.method private processOption()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 53
    iget v2, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/PostPhotoActivity;->startPicker()V

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 55
    :cond_2
    iget v2, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-ne v2, v4, :cond_3

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/ForwardMessageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x66

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/PostPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 58
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget v2, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    const-string v2, "select_album"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "PhotoAlbumsListFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 65
    const/16 v2, 0x67

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/PostPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startPicker()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 72
    const-string v1, "single_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    :cond_0
    :goto_0
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/PostPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    return-void

    .line 73
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-ne v1, v3, :cond_0

    .line 74
    :cond_2
    const-string v1, "selection_limit"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v7, -0x1

    .line 79
    const/16 v6, 0x65

    if-ne p1, v6, :cond_6

    if-ne p2, v7, :cond_6

    .line 80
    const-string v6, "images"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 81
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-nez v6, :cond_0

    .line 82
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "photos"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PostPhotoActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    iget v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-ne v6, v10, :cond_2

    .line 87
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "id"

    iget-object v7, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v6, "title"

    iget-object v7, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 90
    iget-object v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    const v7, 0x77359400

    if-ge v6, v7, :cond_1

    const-string v6, "photo"

    iget-object v7, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 91
    :cond_1
    const-string v6, "photos"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 92
    const-string v6, "ChatFragment"

    invoke-static {v6, v1, p0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 94
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_2
    iget v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 95
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 106
    :cond_3
    iget v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 107
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "type"

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v7, "file"

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PostPhotoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 112
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->finish()V

    .line 123
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 95
    .restart local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    .local v2, "file":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v7, "file"

    invoke-virtual {v4, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "aid"

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/vkontakte/android/PostPhotoActivity;->aid:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v7, "req_params"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    const-string v7, "type"

    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PostPhotoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 113
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    const/16 v6, 0x66

    if-ne p1, v6, :cond_7

    if-ne p2, v7, :cond_7

    .line 114
    const-string v6, "profile"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    iput-object v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    .line 115
    invoke-direct {p0}, Lcom/vkontakte/android/PostPhotoActivity;->startPicker()V

    goto :goto_1

    .line 116
    :cond_7
    const/16 v6, 0x67

    if-ne p1, v6, :cond_8

    if-ne p2, v7, :cond_8

    .line 117
    const-string v6, "album"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 118
    .local v0, "album":Lcom/vkontakte/android/api/PhotoAlbum;
    iget v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    iput v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->aid:I

    .line 119
    invoke-direct {p0}, Lcom/vkontakte/android/PostPhotoActivity;->startPicker()V

    goto :goto_1

    .line 121
    .end local v0    # "album":Lcom/vkontakte/android/api/PhotoAlbum;
    :cond_8
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->finish()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "option"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "option"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    .line 29
    invoke-direct {p0}, Lcom/vkontakte/android/PostPhotoActivity;->processOption()V

    .line 50
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    const v1, 0x7f060247

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 34
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f060248

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const v3, 0x7f060249

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f06024a

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f06024b

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 35
    new-instance v2, Lcom/vkontakte/android/PostPhotoActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/PostPhotoActivity$1;-><init>(Lcom/vkontakte/android/PostPhotoActivity;)V

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/vkontakte/android/PostPhotoActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PostPhotoActivity$2;-><init>(Lcom/vkontakte/android/PostPhotoActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 49
    invoke-virtual {p0, v4, v4}, Lcom/vkontakte/android/PostPhotoActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 127
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 128
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 132
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 133
    return-void
.end method
