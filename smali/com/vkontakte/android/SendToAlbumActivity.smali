.class public Lcom/vkontakte/android/SendToAlbumActivity;
.super Landroid/app/Activity;
.source "SendToAlbumActivity.java"


# static fields
.field private static final FILTER_RESULT:I = 0x65


# instance fields
.field private aid:I

.field intent:Landroid/content/Intent;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SendToAlbumActivity;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->createAlbumAndSend()V

    return-void
.end method

.method private createAlbumAndSend()V
    .locals 4

    .prologue
    .line 165
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "photos.createAlbum"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 166
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/vkontakte/android/SendToAlbumActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SendToAlbumActivity$4;-><init>(Lcom/vkontakte/android/SendToAlbumActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 180
    return-void
.end method

.method private loadAlbums()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "pdlg":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 51
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.getAlbums"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v2, Lcom/vkontakte/android/SendToAlbumActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/SendToAlbumActivity$1;-><init>(Lcom/vkontakte/android/SendToAlbumActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 92
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 93
    return-void
.end method


# virtual methods
.method public doSend(ILjava/lang/String;)V
    .locals 6
    .param p1, "aid"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x65

    .line 96
    iput p1, p0, Lcom/vkontakte/android/SendToAlbumActivity;->aid:I

    .line 97
    iput-object p2, p0, Lcom/vkontakte/android/SendToAlbumActivity;->title:Ljava/lang/String;

    .line 98
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    iget-object v4, p0, Lcom/vkontakte/android/SendToAlbumActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "fIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/vkontakte/android/SendToAlbumActivity;->intent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 101
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0, v5}, Lcom/vkontakte/android/SendToAlbumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 112
    .end local v0    # "fIntent":Landroid/content/Intent;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v3, "android.intent.action.SEND"

    iget-object v4, p0, Lcom/vkontakte/android/SendToAlbumActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .restart local v0    # "fIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/vkontakte/android/SendToAlbumActivity;->intent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 108
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0, v5}, Lcom/vkontakte/android/SendToAlbumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 115
    const/16 v5, 0x65

    if-ne p1, v5, :cond_1

    .line 116
    if-ne p2, v8, :cond_0

    .line 117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v4, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v5, "images"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 119
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 122
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "files"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 124
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "aid"

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/vkontakte/android/SendToAlbumActivity;->aid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v5, "req_params"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    const-string v5, "info"

    iget-object v6, p0, Lcom/vkontakte/android/SendToAlbumActivity;->title:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v5, "type"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SendToAlbumActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 131
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->finish()V

    .line 133
    :cond_1
    const/16 v5, 0x64

    if-ne p1, v5, :cond_2

    .line 134
    if-ne p2, v8, :cond_4

    .line 135
    invoke-direct {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->loadAlbums()V

    .line 140
    :cond_2
    :goto_1
    return-void

    .line 119
    .restart local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, "file":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->finish()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0, v0}, Lcom/vkontakte/android/SendToAlbumActivity;->overridePendingTransition(II)V

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SendToAlbumActivity;->intent:Landroid/content/Intent;

    .line 37
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendToAlbumActivity;->setContentView(Landroid/view/View;)V

    .line 39
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/SendToAlbumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->loadAlbums()V

    goto :goto_0
.end method

.method public showDialog([Ljava/lang/String;[I)V
    .locals 2
    .param p1, "atitles"    # [Ljava/lang/String;
    .param p2, "aids"    # [I

    .prologue
    .line 143
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/vkontakte/android/SendToAlbumActivity$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/vkontakte/android/SendToAlbumActivity$2;-><init>(Lcom/vkontakte/android/SendToAlbumActivity;[I[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/vkontakte/android/SendToAlbumActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SendToAlbumActivity$3;-><init>(Lcom/vkontakte/android/SendToAlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 162
    return-void
.end method
