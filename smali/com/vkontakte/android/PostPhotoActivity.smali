.class public Lcom/vkontakte/android/PostPhotoActivity;
.super Landroid/app/Activity;
.source "PostPhotoActivity.java"


# static fields
.field private static final ALBUM_RESULT:I = 0x67

.field private static final MESSAGE_RESULT:I = 0x66

.field private static final PICKER_RESULT:I = 0x65


# instance fields
.field private aid:I

.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.method private processOption()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 56
    iget v2, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/PostPhotoActivity;->startPicker()V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    iget v2, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-eq v2, v4, :cond_1

    .line 60
    iget v2, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string v2, "select_album"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "PhotoAlbumsListFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    const/16 v2, 0x67

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/PostPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startPicker()V
    .locals 5

    .prologue
    .line 72
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f080262

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f080263

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f080264

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    const-string v2, "complete_options"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .restart local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v2, 0x7f080265

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    const-string v2, "complete_single_options"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 79
    const-string v2, "selection_limit"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/PostPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x67

    const/16 v8, 0x66

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v9, 0x1

    .line 84
    const/16 v5, 0x65

    if-ne p1, v5, :cond_4

    if-ne p2, v6, :cond_4

    .line 85
    const-string v5, "images"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    .line 86
    const-string v5, "chosen_option"

    invoke-virtual {p3, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    .line 87
    iget v5, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-nez v5, :cond_0

    .line 88
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "photos"

    iget-object v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PostPhotoActivity;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->finish()V

    .line 93
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    iget v5, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-ne v5, v9, :cond_1

    .line 94
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/vkontakte/android/ForwardMessageActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3, v8}, Lcom/vkontakte/android/PostPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget v5, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v1, "args":Landroid/os/Bundle;
    const-string v5, "select"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    const-string v5, "select_album"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "class"

    const-string v6, "PhotoAlbumsListFragment"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v5, "args"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v3, v10}, Lcom/vkontakte/android/PostPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    iget v5, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 107
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "type"

    const/4 v6, 0x6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v6, "file"

    iget-object v5, p0, Lcom/vkontakte/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PostPhotoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->finish()V

    .line 139
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    return-void

    .line 113
    :cond_4
    if-ne p1, v8, :cond_6

    if-ne p2, v6, :cond_6

    .line 114
    const-string v5, "profile"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iput-object v5, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    .line 115
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v5, "id"

    iget-object v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string v5, "title"

    iget-object v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 118
    iget-object v5, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    const v6, 0x77359400

    if-ge v5, v6, :cond_5

    const-string v5, "photo"

    iget-object v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    iget-object v6, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 119
    :cond_5
    const-string v5, "photos"

    iget-object v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 120
    const-string v5, "ChatFragment"

    invoke-static {v5, v1, p0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 121
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->finish()V

    goto :goto_0

    .line 122
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_6
    if-ne p1, v10, :cond_8

    if-ne p2, v6, :cond_8

    .line 123
    const-string v5, "album"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 124
    .local v0, "album":Lcom/vkontakte/android/api/PhotoAlbum;
    iget v5, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    iput v5, p0, Lcom/vkontakte/android/PostPhotoActivity;->aid:I

    .line 125
    iget-object v5, p0, Lcom/vkontakte/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 135
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->finish()V

    goto :goto_0

    .line 125
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, "file":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "file"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "aid"

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/vkontakte/android/PostPhotoActivity;->aid:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v6, "req_params"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    const-string v6, "type"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PostPhotoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 137
    .end local v0    # "album":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v2    # "file":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "option"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "option"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    .line 30
    invoke-direct {p0}, Lcom/vkontakte/android/PostPhotoActivity;->processOption()V

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/PostPhotoActivity;->startPicker()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 143
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 149
    return-void
.end method
