.class public Lcom/vkontakte/android/WallActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "WallActivity.java"


# static fields
.field public static final ACTION_NEW_POST_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.NEW_POST_ADDED"

.field public static final ACTION_POST_DELETED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_DELETED"

.field public static final ACTION_POST_REPLACED_BROADCAST:Ljava/lang/String; = "com.vkontakte.android.POST_REPLACED"

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

.field public uploadAlbumID:I

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

    .line 39
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->CAMERA_RESULT:I

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->GALLERY_RESULT:I

    .line 55
    iput-boolean v1, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/WallActivity;->loaded:Z

    .line 59
    iput v1, p0, Lcom/vkontakte/android/WallActivity;->uploadAlbumID:I

    .line 61
    new-instance v0, Lcom/vkontakte/android/WallActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/WallActivity$1;-><init>(Lcom/vkontakte/android/WallActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/WallActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/WallActivity;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/WallView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/WallActivity;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkontakte/android/WallActivity;->loaded:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/ProfilePhotosView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/WallActivity;I)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/vkontakte/android/WallActivity;->switchTab(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/WallActivity;ILjava/util/Vector;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/WallActivity;->openPhoto(ILjava/util/Vector;ILandroid/view/View;)V

    return-void
.end method

.method private openPhoto(ILjava/util/Vector;ILandroid/view/View;)V
    .locals 11
    .param p1, "id"    # I
    .param p3, "total"    # I
    .param p4, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;I",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 311
    .local p2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    const/4 v4, 0x0

    .line 312
    .local v4, "index":I
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v0, v8, [Lcom/vkontakte/android/Photo;

    .line 313
    .local v0, "array":[Lcom/vkontakte/android/Photo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 319
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "photo_list"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 321
    const-string v8, "photo_index"

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string v8, "list_type"

    const/4 v9, 0x2

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    const-string v8, "list_uid"

    iget v9, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    const-string v8, "list_total"

    invoke-virtual {v5, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const-string v8, "username"

    iget-object v9, p0, Lcom/vkontakte/android/WallActivity;->userName:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v8, "userphoto"

    iget-object v9, p0, Lcom/vkontakte/android/WallActivity;->userPhoto:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v8, "incomplete"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    aget-object v8, v0, v4

    iget-object v8, v8, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    invoke-static {v8}, Lcom/vkontakte/android/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 329
    iget-object v8, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v8, p1}, Lcom/vkontakte/android/WallView;->getPhotoByID(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 330
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    const-string v8, "thumb"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 332
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x10

    if-lt v8, v9, :cond_3

    .line 333
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v6, v8, 0x5

    .line 334
    .local v6, "iw":I
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v8, 0x5

    .line 335
    .local v3, "ih":I
    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    div-int/lit8 v10, v3, 0x2

    sub-int/2addr v9, v10

    invoke-static {p4, v8, v9, v6, v3}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v7

    .line 336
    .local v7, "opts":Landroid/app/ActivityOptions;
    invoke-virtual {v7}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/vkontakte/android/WallActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 340
    .end local v3    # "ih":I
    .end local v6    # "iw":I
    .end local v7    # "opts":Landroid/app/ActivityOptions;
    :goto_1
    return-void

    .line 314
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Photo;

    iget v8, v8, Lcom/vkontakte/android/Photo;->id:I

    if-ne v8, p1, :cond_2

    .line 315
    move v4, v2

    .line 317
    :cond_2
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/Photo;

    aput-object v8, v0, v2

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 338
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/WallActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private switchTab(I)V
    .locals 5
    .param p1, "tab"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    iget-boolean v0, p0, Lcom/vkontakte/android/WallActivity;->loaded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/WallActivity;->currentTab:I

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const v0, 0x7f060191

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 228
    const v0, 0x7f060192

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 230
    iput-boolean v2, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    .line 231
    if-nez p1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/WallView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->onResume()V

    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/WallView;->showProfileInfo(Z)V

    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/ProfilePhotosView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfilePhotosView;->onPause()V

    .line 238
    :cond_2
    if-ne p1, v1, :cond_3

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/WallView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->onPause()V

    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ProfilePhotosView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfilePhotosView;->onResume()V

    .line 244
    :cond_3
    iput p1, p0, Lcom/vkontakte/android/WallActivity;->currentTab:I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 227
    goto :goto_1

    :cond_5
    move v0, v2

    .line 228
    goto :goto_2
.end method


# virtual methods
.method public addToAllPhotos(Ljava/util/List;I)V
    .locals 1
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/Photo;>;"
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ProfilePhotosView;->setAllPhotosList(Ljava/util/List;I)V

    .line 431
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 416
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/WallActivity;->uploadAlbumID:I

    if-nez v0, :cond_4

    .line 418
    if-ne p1, v2, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->uploadProfilePhoto(Landroid/net/Uri;)V

    .line 419
    :cond_2
    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->uploadProfilePhoto(Landroid/net/Uri;)V

    .line 424
    :cond_3
    :goto_1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    const-string v1, "status"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/WallView;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_4
    if-ne p1, v2, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->uploadAlbumPhoto(Landroid/net/Uri;)V

    .line 422
    :cond_5
    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->uploadAlbumPhoto(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f060191

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/WallActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    .line 105
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wall_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wall_id"

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    .line 120
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

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_tab_root"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    if-lez v0, :cond_2

    .line 121
    const v0, 0x7f030055

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->customTitleResID:I

    .line 123
    :cond_2
    new-instance v0, Lcom/vkontakte/android/WallView;

    iget v1, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/WallView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    .line 124
    new-instance v0, Lcom/vkontakte/android/ProfilePhotosView;

    iget v1, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ProfilePhotosView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ProfilePhotosView;->setVisibility(I)V

    .line 127
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 128
    .local v7, "contentView":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 130
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/WallActivity;->setContentView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 133
    iget v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    if-gez v0, :cond_3

    .line 134
    const v0, 0x7f060182

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    new-instance v1, Lcom/vkontakte/android/WallActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallActivity$2;-><init>(Lcom/vkontakte/android/WallActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/WallView;->setOnDataLoadedListener(Lcom/vkontakte/android/WallView$OnDataLoadedListener;)V

    .line 156
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->loadInitial()V

    .line 158
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v0, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v0, "com.vkontakte.android.POST_REPLACED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v0, "com.vkontakte.android.USER_PHOTO_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/vkontakte/android/WallActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "force_tabs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_tab_root"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 167
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    if-lez v0, :cond_5

    .line 168
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setSelected(Z)V

    .line 169
    invoke-virtual {p0, v13}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/WallActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallActivity$3;-><init>(Lcom/vkontakte/android/WallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v0, 0x7f060192

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/WallActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WallActivity$4;-><init>(Lcom/vkontakte/android/WallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_5
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    .line 210
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    const v1, 0x7f020181

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 212
    .local v6, "bparams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->addViewAtRight(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 216
    new-instance v10, Lcom/vkontakte/android/WallActivity$5;

    invoke-direct {v10, p0}, Lcom/vkontakte/android/WallActivity$5;-><init>(Lcom/vkontakte/android/WallActivity;)V

    .line 222
    .local v10, "listener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-void

    .line 107
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

    .line 108
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

    .line 110
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

    .line 112
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

    .line 113
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 115
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    return-void
.end method

.method public onOpenPhoto(ILjava/util/ArrayList;ILandroid/view/View;)V
    .locals 7
    .param p1, "id"    # I
    .param p3, "total"    # I
    .param p4, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;I",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Photo;>;"
    const/4 v6, 0x0

    .line 282
    iget-object v3, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ProfilePhotosView;->getAllPhotosList()Ljava/util/Vector;

    move-result-object v2

    .line 283
    .local v2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Photo;

    iget-object v3, v3, Lcom/vkontakte/android/Photo;->fullURL:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 284
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 285
    .local v1, "ph1":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    iget-object v3, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v3, v1, p3}, Lcom/vkontakte/android/ProfilePhotosView;->setAllPhotosList(Ljava/util/List;I)V

    .line 287
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/vkontakte/android/WallActivity;->openPhoto(ILjava/util/Vector;ILandroid/view/View;)V

    .line 308
    .end local v1    # "ph1":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :goto_1
    return-void

    .line 285
    .restart local v1    # "ph1":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Photo;

    .local v0, "p":Lcom/vkontakte/android/Photo;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    .end local v0    # "p":Lcom/vkontakte/android/Photo;
    .end local v1    # "ph1":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 291
    new-instance v3, Lcom/vkontakte/android/api/PhotosGetAll;

    iget v4, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    const/16 v5, 0x64

    invoke-direct {v3, v4, v6, v5}, Lcom/vkontakte/android/api/PhotosGetAll;-><init>(III)V

    .line 292
    new-instance v4, Lcom/vkontakte/android/WallActivity$6;

    invoke-direct {v4, p0, p1, p4}, Lcom/vkontakte/android/WallActivity$6;-><init>(Lcom/vkontakte/android/WallActivity;ILandroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/PhotosGetAll;->setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 303
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 304
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_1

    .line 306
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ProfilePhotosView;->getAllPhotosTotal()I

    move-result v3

    invoke-direct {p0, p1, v2, v3, p4}, Lcom/vkontakte/android/WallActivity;->openPhoto(ILjava/util/Vector;ILandroid/view/View;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->onPause()V

    .line 274
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 267
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    invoke-virtual {v0}, Lcom/vkontakte/android/WallView;->onResume()V

    .line 269
    return-void
.end method

.method public openPhotoPage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->photosView:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ProfilePhotosView;->setPage(I)V

    .line 344
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/WallActivity;->switchTab(I)V

    .line 345
    return-void
.end method

.method public showProfilePhotoBox()V
    .locals 4

    .prologue
    .line 348
    const/4 v1, 0x0

    iput v1, p0, Lcom/vkontakte/android/WallActivity;->uploadAlbumID:I

    .line 349
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 350
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

    .line 351
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 353
    new-instance v3, Lcom/vkontakte/android/WallActivity$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/WallActivity$7;-><init>(Lcom/vkontakte/android/WallActivity;)V

    .line 352
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 366
    const v2, 0x7f09012a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->startGallery()V

    goto :goto_0
.end method

.method public showUploadPhotoBox()V
    .locals 4

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 374
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

    .line 375
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 377
    new-instance v3, Lcom/vkontakte/android/WallActivity$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/WallActivity$8;-><init>(Lcom/vkontakte/android/WallActivity;)V

    .line 376
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 390
    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->startGallery()V

    goto :goto_0
.end method

.method public startCamera()V
    .locals 5

    .prologue
    .line 398
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    const-string v4, "tmp"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/WallActivity;->tempPhotoURI:Landroid/net/Uri;

    .line 401
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "camIntent":Landroid/content/Intent;
    const-string v3, "output"

    iget-object v4, p0, Lcom/vkontakte/android/WallActivity;->tempPhotoURI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 403
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/WallActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v0    # "camIntent":Landroid/content/Intent;
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v2

    .line 405
    .local v2, "x":Ljava/lang/Exception;
    const v3, 0x7f090053

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public startGallery()V
    .locals 3

    .prologue
    .line 410
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    .line 411
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 410
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 412
    .local v0, "i":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/WallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 413
    return-void
.end method

.method toggleInfo()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 248
    iget-boolean v0, p0, Lcom/vkontakte/android/WallActivity;->loaded:Z

    if-nez v0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    if-nez v0, :cond_2

    invoke-direct {p0, v1}, Lcom/vkontakte/android/WallActivity;->switchTab(I)V

    .line 259
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->infoBtn:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 261
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity;->wallView:Lcom/vkontakte/android/WallView;

    iget-boolean v3, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/WallView;->showProfileInfo(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "force_tabs"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/WallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "_tab_root"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget v0, p0, Lcom/vkontakte/android/WallActivity;->wallID:I

    if-lez v0, :cond_0

    const v0, 0x7f060191

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/vkontakte/android/WallActivity;->showProfile:Z

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 259
    goto :goto_1

    :cond_5
    move v1, v2

    .line 262
    goto :goto_2
.end method

.method public uploadAlbumPhoto(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 445
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 446
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "aid"

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/vkontakte/android/WallActivity;->uploadAlbumID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/SendSinglePhotoActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "file"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 450
    const-string v2, "req_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 451
    const-string v2, "show_hint"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->startActivity(Landroid/content/Intent;)V

    .line 453
    return-void
.end method

.method public uploadProfilePhoto(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 434
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    const-string v1, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/WallActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 438
    return-void
.end method
