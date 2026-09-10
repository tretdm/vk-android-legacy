.class public Lcom/vkontakte/android/PhotoListActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "PhotoListActivity.java"


# static fields
.field public static final ACTION_PHOTO_ADDED:Ljava/lang/String; = "com.vkontakte.android.PHOTO_ADDED"


# instance fields
.field private final CAMERA_RESULT:I

.field private final GALLERY_RESULT:I

.field private receiver:Landroid/content/BroadcastReceiver;

.field private tempPhotoURI:Landroid/net/Uri;

.field private view:Lcom/vkontakte/android/PhotoListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/PhotoListActivity;->CAMERA_RESULT:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkontakte/android/PhotoListActivity;->GALLERY_RESULT:I

    .line 32
    new-instance v0, Lcom/vkontakte/android/PhotoListActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/PhotoListActivity$1;-><init>(Lcom/vkontakte/android/PhotoListActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/PhotoListActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoListActivity;)Lcom/vkontakte/android/PhotoListView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListActivity;->view:Lcom/vkontakte/android/PhotoListView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/PhotoListActivity;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/vkontakte/android/PhotoListActivity;->showPhotoDialog()V

    return-void
.end method

.method private showPhotoDialog()V
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 92
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const-string v1, "android.hardware.camera"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->hasSysFeature(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 95
    new-instance v3, Lcom/vkontakte/android/PhotoListActivity$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoListActivity$4;-><init>(Lcom/vkontakte/android/PhotoListActivity;)V

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 108
    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->startGallery()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 135
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const/4 v2, 0x0

    .line 137
    .local v2, "path":Landroid/net/Uri;
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 138
    :cond_2
    if-ne p1, v8, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListActivity;->tempPhotoURI:Landroid/net/Uri;

    .line 139
    :cond_3
    if-eqz v2, :cond_0

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "aid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "aid"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "oid"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_4

    const-string v3, "gid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "oid"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    neg-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/vkontakte/android/SendSinglePhotoActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "file"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    const-string v3, "req_params"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "oid"

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_5

    const-string v3, "show_hint"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    :cond_5
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/PhotoListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PhotoListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v3, Lcom/vkontakte/android/PhotoListView;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/PhotoListActivity;->view:Lcom/vkontakte/android/PhotoListView;

    .line 48
    iget-object v3, p0, Lcom/vkontakte/android/PhotoListActivity;->view:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/PhotoListActivity;->setContentView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "aid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 50
    iget-object v3, p0, Lcom/vkontakte/android/PhotoListActivity;->view:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "oid"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "aid"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/PhotoListView;->setAlbum(II)V

    .line 53
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/PhotoListActivity;->view:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/PhotoListView;->onActivate()V

    .line 55
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "aid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "oid"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "can_add"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v1, "btnPost":Landroid/widget/ImageView;
    const v3, 0x7f0200c9

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    .local v0, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 60
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 61
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v3, Lcom/vkontakte/android/PhotoListActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/PhotoListActivity$2;-><init>(Lcom/vkontakte/android/PhotoListActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/PhotoListActivity;->addViewAtRight(Landroid/view/View;)V

    .line 71
    .end local v0    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "btnPost":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "aid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.vkontakte.android.PHOTO_ADDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/vkontakte/android/PhotoListActivity;->receiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.vkontakte.android.permission.ACCESS_DATA"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/vkontakte/android/PhotoListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 76
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_3
    return-void

    .line 51
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/vkontakte/android/PhotoListActivity;->view:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "uid"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/PhotoListView;->setType(II)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListActivity;->view:Lcom/vkontakte/android/PhotoListView;

    new-instance v1, Lcom/vkontakte/android/PhotoListActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoListActivity$3;-><init>(Lcom/vkontakte/android/PhotoListActivity;)V

    .line 82
    const-wide/16 v2, 0x12c

    .line 80
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/PhotoListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/PhotoListActivity;->view:Lcom/vkontakte/android/PhotoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onActivate()V

    .line 88
    return-void
.end method

.method public startCamera()V
    .locals 5

    .prologue
    .line 116
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    const-string v4, "tmp"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/PhotoListActivity;->tempPhotoURI:Landroid/net/Uri;

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "camIntent":Landroid/content/Intent;
    const-string v3, "output"

    iget-object v4, p0, Lcom/vkontakte/android/PhotoListActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/PhotoListActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "camIntent":Landroid/content/Intent;
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v2

    .line 123
    .local v2, "x":Ljava/lang/Exception;
    const v3, 0x7f090052

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startGallery()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    .line 129
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 128
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 130
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/PhotoListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    return-void
.end method
