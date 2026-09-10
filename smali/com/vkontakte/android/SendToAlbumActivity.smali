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
    .line 151
    invoke-direct {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->createAlbumAndSend()V

    return-void
.end method

.method private createAlbumAndSend()V
    .locals 4

    .prologue
    .line 152
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "photos.createAlbum"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 153
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/vkontakte/android/SendToAlbumActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SendToAlbumActivity$4;-><init>(Lcom/vkontakte/android/SendToAlbumActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 167
    return-void
.end method


# virtual methods
.method public doSend(ILjava/lang/String;)V
    .locals 6
    .param p1, "aid"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x65

    .line 92
    iput p1, p0, Lcom/vkontakte/android/SendToAlbumActivity;->aid:I

    .line 93
    iput-object p2, p0, Lcom/vkontakte/android/SendToAlbumActivity;->title:Ljava/lang/String;

    .line 94
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    iget-object v4, p0, Lcom/vkontakte/android/SendToAlbumActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 96
    .local v0, "fIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/vkontakte/android/SendToAlbumActivity;->intent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 97
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0, v5}, Lcom/vkontakte/android/SendToAlbumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 108
    .end local v0    # "fIntent":Landroid/content/Intent;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v3, "android.intent.action.SEND"

    iget-object v4, p0, Lcom/vkontakte/android/SendToAlbumActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .restart local v0    # "fIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/vkontakte/android/SendToAlbumActivity;->intent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 104
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0, v5}, Lcom/vkontakte/android/SendToAlbumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 111
    const/16 v5, 0x65

    if-ne p1, v5, :cond_0

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v4, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v5, "images"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 114
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 117
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "files"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 119
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 120
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

    .line 121
    const-string v5, "req_params"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 122
    const-string v5, "info"

    iget-object v6, p0, Lcom/vkontakte/android/SendToAlbumActivity;->title:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v5, "type"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SendToAlbumActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->finish()V

    .line 127
    return-void

    .line 114
    .restart local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, "file":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 32
    :try_start_0
    const-class v1, Landroid/app/Activity;

    const-string v2, "overridePendingTransition"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 33
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/SendToAlbumActivity;->intent:Landroid/content/Intent;

    .line 41
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SendToAlbumActivity;->setContentView(Landroid/view/View;)V

    .line 43
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "pdlg":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/vkontakte/android/SendToAlbumActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 47
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.getAlbums"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v2, Lcom/vkontakte/android/SendToAlbumActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/SendToAlbumActivity$1;-><init>(Lcom/vkontakte/android/SendToAlbumActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 89
    return-void

    .line 34
    .end local v0    # "pdlg":Landroid/app/ProgressDialog;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public showDialog([Ljava/lang/String;[I)V
    .locals 2
    .param p1, "atitles"    # [Ljava/lang/String;
    .param p2, "aids"    # [I

    .prologue
    .line 130
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    const v1, 0x7f06008e

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/vkontakte/android/SendToAlbumActivity$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/vkontakte/android/SendToAlbumActivity$2;-><init>(Lcom/vkontakte/android/SendToAlbumActivity;[I[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/vkontakte/android/SendToAlbumActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SendToAlbumActivity$3;-><init>(Lcom/vkontakte/android/SendToAlbumActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 149
    return-void
.end method
