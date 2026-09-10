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
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private processOption()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 55
    iget v2, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/PostPhotoActivity;->startPicker()V

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    iget v2, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-eq v2, v4, :cond_1

    .line 59
    iget v2, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "select"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    const-string v2, "select_album"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "PhotoAlbumsFragment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v2, "args"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    const/16 v2, 0x67

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/PostPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private startPicker()V
    .locals 5

    .prologue
    .line 71
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f0d02d4

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0d02d2

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f0d02d1

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    const-string v2, "complete_options"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .restart local v0    # "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v2, 0x7f0d02d3

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/PostPhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v2, "complete_single_options"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    const-string v2, "selection_limit"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const/16 v2, 0x65

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/PostPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 80
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0x67

    const/16 v10, 0x66

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x1

    .line 83
    const/16 v6, 0x65

    if-ne p1, v6, :cond_4

    if-ne p2, v7, :cond_4

    .line 84
    const-string v6, "images"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    .line 85
    const-string v6, "chosen_option"

    invoke-virtual {p3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    .line 86
    iget v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-nez v6, :cond_0

    .line 87
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/NewPostActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v4, "intent":Landroid/content/Intent;
    const-string v6, "photos"

    iget-object v7, p0, Lcom/vkontakte/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PostPhotoActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->finish()V

    .line 92
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    iget v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    if-ne v6, v9, :cond_1

    .line 93
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/ForwardMessageActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4, v10}, Lcom/vkontakte/android/PostPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    iget v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "select"

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    const-string v6, "select_album"

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "class"

    const-string v7, "PhotoAlbumsFragment"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v6, "args"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v4, v11}, Lcom/vkontakte/android/PostPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 105
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    iget v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 106
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "type"

    const/4 v7, 0x6

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    const-string v7, "file"

    iget-object v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PostPhotoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->finish()V

    .line 138
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    return-void

    .line 112
    :cond_4
    if-ne p1, v10, :cond_6

    if-ne p2, v7, :cond_6

    .line 113
    const-string v6, "profile"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UserProfile;

    iput-object v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    .line 114
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 115
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v6, "id"

    iget-object v7, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    const-string v6, "title"

    iget-object v7, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 117
    iget-object v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    const v7, 0x77359400

    if-ge v6, v7, :cond_5

    const-string v6, "photo"

    iget-object v7, p0, Lcom/vkontakte/android/PostPhotoActivity;->msgReceiver:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 118
    :cond_5
    const-string v6, "photos"

    iget-object v7, p0, Lcom/vkontakte/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 119
    const-string v6, "ChatFragment"

    invoke-static {v6, v1, p0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 120
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->finish()V

    goto :goto_0

    .line 121
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_6
    if-ne p1, v11, :cond_8

    if-ne p2, v7, :cond_8

    .line 122
    const-string v6, "album"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/PhotoAlbum;

    .line 123
    .local v0, "album":Lcom/vkontakte/android/api/PhotoAlbum;
    iget v6, v0, Lcom/vkontakte/android/api/PhotoAlbum;->id:I

    iput v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->aid:I

    .line 124
    iget-object v6, p0, Lcom/vkontakte/android/PostPhotoActivity;->files:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    .local v2, "file":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v6, "file"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "aid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/vkontakte/android/PostPhotoActivity;->aid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v6, "req_params"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 131
    const-string v6, "type"

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/PostPhotoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 134
    .end local v2    # "file":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->finish()V

    goto/16 :goto_0

    .line 136
    .end local v0    # "album":Lcom/vkontakte/android/api/PhotoAlbum;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {p0}, Lcom/vkontakte/android/PostPhotoActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
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

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/PostPhotoActivity;->option:I

    .line 29
    invoke-direct {p0}, Lcom/vkontakte/android/PostPhotoActivity;->processOption()V

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/PostPhotoActivity;->startPicker()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 142
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 148
    return-void
.end method
