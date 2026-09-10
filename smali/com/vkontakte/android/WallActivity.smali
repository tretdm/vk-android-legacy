.class public Lcom/vkontakte/android/WallActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "WallActivity.java"


# static fields
.field public static final ACTION_NEW_POST_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.NEW_POST_ADDED"

.field public static final ACTION_POST_DELETED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_DELETED"

.field public static final ACTION_POST_UPDATED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_UPDATED"

.field public static final ACTION_USER_PHOTO_CHANGED:Ljava/lang/String; = "com.vkontakte.android.USER_PHOTO_CHANGED"


# instance fields
.field private final CAMERA_RESULT:I

.field private final GALLERY_RESULT:I

.field private currentTab:I

.field private infoBtn:Landroid/widget/ImageView;

.field private loaded:Z

.field private photosView:Lcom/vkontakte/android/ProfilePhotosView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private showProfile:Z

.field private tempPhotoURI:Landroid/net/Uri;

.field protected userName:Ljava/lang/String;

.field protected userPhoto:Ljava/lang/String;

.field private wallID:I

.field private wallView:Lcom/vkontakte/android/WallView;

.field private writeBtn:Lcom/vkontakte/android/TitleBarButton;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->CAMERA_RESULT:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->GALLERY_RESULT:I

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/WallActivity;->loaded:Z

    .line 56
    new-instance v0, Lcom/vkontakte/android/WallActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/WallActivity$1;-><init>(Lcom/vkontakte/android/WallActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/WallActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/WallActivity;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/WallView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/WallActivity;Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/vkontakte/android/WallActivity;->loaded:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/ProfilePhotosView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/WallActivity;I)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/vkontakte/android/WallActivity;->switchTab(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/WallActivity;ILjava/util/Vector;I)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/WallActivity;->openPhoto(ILjava/util/Vector;I)V

    return-void
.end method

.method private openPhoto(ILjava/util/Vector;I)V
    .locals 7
    .param p1, "id"    # I
    .param p3, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    const/4 v3, 0x0

    .line 296
    .local v3, "index":I
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v0, v5, [Lcom/vkontakte/android/Photo;

    .line 297
    .local v0, "array":[Lcom/vkontakte/android/Photo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 303
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "photo_list"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 305
    const-string v5, "photo_index"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v5, "list_type"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    const-string v5, "list_uid"

    iget v6, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v5, "list_total"

    invoke-virtual {v4, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v5, "username"

    iget-object v6, p0, Lcom/vkontakte/android/WallActivity;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v5, "userphoto"

    iget-object v6, p0, Lcom/vkontakte/android/WallActivity;->userPhoto:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v5, "incomplete"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    aget-object v5, v0, v3

    iget-object v5, v5, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v5}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    iget-object v5, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v5, p1}, Lcom/vkontakte/android/WallView;->getPhotoByID(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 314
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    const-string v5, "thumb"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 316
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/WallActivity;->startActivity(Landroid/content/Intent;)V

    .line 317
    return-void

    .line 298
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Photo;

    iget v5, v5, Lcom/vkontakte/android/Photo;->id:I

    if-ne v5, p1, :cond_2

    .line 299
    move v3, v2

    .line 301
    :cond_2
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Photo;

    aput-object v5, v0, v2

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private switchTab(I)V
    .locals 5
    .param p1, "tab"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    iget-boolean v0, p0, Lcom/vkontakte/android/WallActivity;->loaded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/WallActivity;->currentTab:I

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const v0, 0x7f0601a5

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 212
    const v0, 0x7f0601a6

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 214
    iput-boolean v2, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    .line 215
    if-nez p1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/WallView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->onResume()V

    .line 218
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/WallView;->showProfileInfo(Z)V

    .line 219
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ProfilePhotosView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfilePhotosView;->onPause()V

    .line 222
    :cond_2
    if-ne p1, v1, :cond_3

    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/WallView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->onPause()V

    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ProfilePhotosView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfilePhotosView;->onResume()V

    .line 228
    :cond_3
    iput p1, p0, Lcom/vkontakte/android/WallActivity;->currentTab:I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 211
    goto :goto_1

    :cond_5
    move v0, v2

    .line 212
    goto :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 368
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->uploadProfilePhoto(Landroid/net/Uri;)V

    .line 370
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->uploadProfilePhoto(Landroid/net/Uri;)V

    .line 371
    :cond_3
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    const-string v1, "status"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/WallView;->setStatus(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f0601a5

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/WallActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    .line 90
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wall_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wall_id"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    .line 105
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "force_tabs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    if-lez v0, :cond_2

    .line 106
    const v0, 0x7f03004e

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->customTitleResID:I

    .line 108
    :cond_2
    new-instance v0, Lcom/vkontakte/android/WallView;

    iget v1, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/WallView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    .line 109
    new-instance v0, Lcom/vkontakte/android/ProfilePhotosView;

    iget v1, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ProfilePhotosView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ProfilePhotosView;->setVisibility(I)V

    .line 112
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .local v7, "contentView":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/WallActivity;->setContentView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 118
    iget v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    if-gez v0, :cond_3

    .line 119
    const v0, 0x7f060197

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    new-instance v1, Lcom/vkontakte/android/WallActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallActivity$2;-><init>(Lcom/vkontakte/android/WallActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/WallView;->setOnDataLoadedListener(Lcom/vkontakte/android/WallView$OnDataLoadedListener;)V

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->loadInitial()V

    .line 143
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v0, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v0, "com.vkontakte.android.USER_PHOTO_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/vkontakte/android/WallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "force_tabs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    if-lez v0, :cond_5

    .line 152
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 153
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/WallActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallActivity$3;-><init>(Lcom/vkontakte/android/WallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v0, 0x7f0601a6

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/WallActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallActivity$4;-><init>(Lcom/vkontakte/android/WallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    :cond_5
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 196
    .local v6, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->addViewAtRight(Landroid/view/View;)V

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 200
    new-instance v10, Lcom/vkontakte/android/WallActivity$5;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/WallActivity$5;-><init>(Lcom/vkontakte/android/WallActivity;)V

    .line 206
    .local v10, "listener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    return-void

    .line 92
    .end local v6    # "bparams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "contentView":Landroid/widget/FrameLayout;
    .end local v9    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "listener":Landroid/view/View$OnClickListener;
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vkontakte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    goto/16 :goto_0

    .line 95
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 98
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 100
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 262
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    return-void
.end method

.method public onOpenPhoto(I[Lcom/vkontakte/android/Photo;I)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "ph"    # [Lcom/vkontakte/android/Photo;
    .param p3, "total"    # I

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v4, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ProfilePhotosView;->getAllPhotosList()Ljava/util/Vector;

    move-result-object v2

    .line 267
    .local v2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_1

    aget-object v4, p2, v3

    iget-object v4, v4, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 268
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 269
    .local v1, "ph1":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    array-length v4, p2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 270
    iget-object v3, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v3, v1, p3}, Lcom/vkontakte/android/ProfilePhotosView;->setAllPhotosList(Ljava/util/Vector;I)V

    .line 271
    invoke-direct {p0, p1, v1, p3}, Lcom/vkontakte/android/WallActivity;->openPhoto(ILjava/util/Vector;I)V

    .line 292
    .end local v1    # "ph1":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :goto_1
    return-void

    .line 269
    .restart local v1    # "ph1":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_0
    aget-object v0, p2, v3

    .local v0, "p":Lcom/vkontakte/android/Photo;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "p":Lcom/vkontakte/android/Photo;
    .end local v1    # "ph1":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 275
    new-instance v4, Lcom/vkontakte/android/api/PhotosGetAll;

    iget v5, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    const/16 v6, 0x64

    invoke-direct {v4, v5, v3, v6}, Lcom/vkontakte/android/api/PhotosGetAll;-><init>(III)V

    .line 276
    new-instance v3, Lcom/vkontakte/android/WallActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/WallActivity$6;-><init>(Lcom/vkontakte/android/WallActivity;I)V

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/api/PhotosGetAll;->setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 287
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 288
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_1

    .line 290
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ProfilePhotosView;->getAllPhotosTotal()I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lcom/vkontakte/android/WallActivity;->openPhoto(ILjava/util/Vector;I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->onPause()V

    .line 258
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 252
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->onResume()V

    .line 253
    return-void
.end method

.method public openPhotoPage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ProfilePhotosView;->setPage(I)V

    .line 321
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/WallActivity;->switchTab(I)V

    .line 322
    return-void
.end method

.method public showProfilePhotoBox()V
    .locals 4

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 326
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

    .line 327
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 329
    new-instance v3, Lcom/vkontakte/android/WallActivity$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/WallActivity$7;-><init>(Lcom/vkontakte/android/WallActivity;)V

    .line 328
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 342
    const v2, 0x7f090129

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->startGallery()V

    goto :goto_0
.end method

.method public startCamera()V
    .locals 5

    .prologue
    .line 350
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    const-string v4, "tmp"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/WallActivity;->tempPhotoURI:Landroid/net/Uri;

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "camIntent":Landroid/content/Intent;
    const-string v3, "output"

    iget-object v4, p0, Lcom/vkontakte/android/WallActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 355
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/WallActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v0    # "camIntent":Landroid/content/Intent;
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v2

    .line 357
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
    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    .line 363
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 362
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 364
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/WallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 365
    return-void
.end method

.method toggleInfo()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 232
    iget-boolean v0, p0, Lcom/vkontakte/android/WallActivity;->loaded:Z

    if-nez v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/vkontakte/android/WallActivity;->switchTab(I)V

    .line 243
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    .line 244
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 245
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    iget-boolean v3, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/WallView;->showProfileInfo(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    if-lez v0, :cond_0

    const v0, 0x7f0601a5

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 243
    goto :goto_1

    :cond_4
    move v1, v2

    .line 246
    goto :goto_2
.end method

.method public uploadProfilePhoto(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 377
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 381
    return-void
.end method
