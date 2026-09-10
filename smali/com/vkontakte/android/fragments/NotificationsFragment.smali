.class public Lcom/vkontakte/android/fragments/NotificationsFragment;
.super Lcom/vkontakte/android/fragments/PreloadingListFragment;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;,
        Lcom/vkontakte/android/fragments/NotificationsFragment$ViewHolder;,
        Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/fragments/PreloadingListFragment",
        "<",
        "Lcom/vkontakte/android/api/NotificationEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID_REPLY_OVERLAY_ICON:I = 0x1f4


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private entryClickListener:Landroid/view/View$OnClickListener;

.field private from:Ljava/lang/String;

.field private langInfo:[[[Ljava/lang/String;

.field private offset:I

.field private photoStripClickListener:Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

.field private profileClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;-><init>(I)V

    .line 73
    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/NotificationsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NotificationsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/NotificationsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NotificationsFragment;

    .prologue
    .line 59
    iget v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->offset:I

    return v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/fragments/NotificationsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NotificationsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->offset:I

    return p1
.end method

.method static synthetic access$202(Lcom/vkontakte/android/fragments/NotificationsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NotificationsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->from:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/NotificationsFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NotificationsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->profileClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/NotificationsFragment;)Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NotificationsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->photoStripClickListener:Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/NotificationsFragment;)[[[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/NotificationsFragment;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->langInfo:[[[Ljava/lang/String;

    return-object v0
.end method

.method private showFilter()V
    .locals 13

    .prologue
    .line 195
    const/4 v10, 0x6

    new-array v5, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const v11, 0x7f0d0366

    invoke-virtual {p0, v11}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const v11, 0x7f0d0160

    invoke-virtual {p0, v11}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x2

    const v11, 0x7f0d0082

    invoke-virtual {p0, v11}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x3

    const v11, 0x7f0d0152

    invoke-virtual {p0, v11}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x4

    const v11, 0x7f0d026c

    invoke-virtual {p0, v11}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x5

    const v11, 0x7f0d00e8

    invoke-virtual {p0, v11}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v10

    .line 196
    .local v5, "opts":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "notifications_filter"

    const-string v12, "wall,mentions,comments,likes,reposts,followers|friends"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "_setting":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v8, "setting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v1, v3

    .line 199
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v7    # "s":Ljava/lang/String;
    :cond_0
    const/4 v10, 0x6

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "wall"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string v11, "mentions"

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string v11, "comments"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    const-string v11, "likes"

    aput-object v11, v6, v10

    const/4 v10, 0x4

    const-string v11, "reposts"

    aput-object v11, v6, v10

    const/4 v10, 0x5

    const-string v11, "followers|friends"

    aput-object v11, v6, v10

    .line 202
    .local v6, "optsVals":[Ljava/lang/String;
    array-length v10, v6

    new-array v9, v10, [Z

    .line 203
    .local v9, "vals":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v10, v9

    if-ge v2, v10, :cond_1

    .line 204
    aget-object v10, v6, v2

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    aput-boolean v10, v9, v2

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_1
    new-instance v10, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0d00e3

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/vkontakte/android/fragments/NotificationsFragment$6;

    invoke-direct {v11, p0, v9}, Lcom/vkontakte/android/fragments/NotificationsFragment$6;-><init>(Lcom/vkontakte/android/fragments/NotificationsFragment;[Z)V

    invoke-virtual {v10, v5, v9, v11}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0d01cd

    new-instance v12, Lcom/vkontakte/android/fragments/NotificationsFragment$5;

    invoke-direct {v12, p0, v9, v6}, Lcom/vkontakte/android/fragments/NotificationsFragment$5;-><init>(Lcom/vkontakte/android/fragments/NotificationsFragment;[Z[Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0d0052

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 227
    return-void
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 250
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->refreshing:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 155
    .local v0, "fromCache":Z
    :goto_0
    new-instance v3, Lcom/vkontakte/android/api/NotificationsGet;

    if-nez p1, :cond_1

    move v2, v1

    :goto_1
    if-nez p1, :cond_2

    const-string v1, ""

    :goto_2
    invoke-direct {v3, v2, v1, p2, v0}, Lcom/vkontakte/android/api/NotificationsGet;-><init>(ILjava/lang/String;IZ)V

    new-instance v1, Lcom/vkontakte/android/fragments/NotificationsFragment$4;

    invoke-direct {v1, p0, p2, v0}, Lcom/vkontakte/android/fragments/NotificationsFragment$4;-><init>(Lcom/vkontakte/android/fragments/NotificationsFragment;IZ)V

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/api/NotificationsGet;->setCallback(Lcom/vkontakte/android/api/NotificationsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/os/Looper;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 180
    return-void

    .end local v0    # "fromCache":Z
    :cond_0
    move v0, v1

    .line 153
    goto :goto_0

    .line 155
    .restart local v0    # "fromCache":Z
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->offset:I

    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->from:Ljava/lang/String;

    goto :goto_2
.end method

.method protected getAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->adapter:Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;-><init>(Lcom/vkontakte/android/fragments/NotificationsFragment;Lcom/vkontakte/android/fragments/NotificationsFragment$1;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->adapter:Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->adapter:Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsAdapter;

    return-object v0
.end method

.method protected getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const v0, 0x7f0d01ad

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/fragments/NotificationsFragment$NotificationsImagesAdapter;-><init>(Lcom/vkontakte/android/fragments/NotificationsFragment;Lcom/vkontakte/android/fragments/NotificationsFragment$1;)V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 8
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [[[Ljava/lang/String;

    new-array v1, v7, [[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->langInfo:[[[Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/vkontakte/android/fragments/NotificationsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/NotificationsFragment$1;-><init>(Lcom/vkontakte/android/fragments/NotificationsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->profileClickListener:Landroid/view/View$OnClickListener;

    .line 112
    new-instance v0, Lcom/vkontakte/android/fragments/NotificationsFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/NotificationsFragment$2;-><init>(Lcom/vkontakte/android/fragments/NotificationsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->entryClickListener:Landroid/view/View$OnClickListener;

    .line 137
    new-instance v0, Lcom/vkontakte/android/fragments/NotificationsFragment$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/NotificationsFragment$3;-><init>(Lcom/vkontakte/android/fragments/NotificationsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->photoStripClickListener:Lcom/vkontakte/android/ui/PhotoStripView$OnPhotoClickListener;

    .line 147
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onAttach(Landroid/app/Activity;)V

    .line 148
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/NotificationsFragment;->setHasOptionsMenu(Z)V

    .line 149
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 183
    const v0, 0x7f0f000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 184
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-super {p0, p1, p2, p3}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 233
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 234
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->list:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 235
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "_pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x4

    .line 264
    iget-object v5, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int/2addr p3, v5

    .line 265
    move v4, p3

    .line 266
    .local v4, "pos":I
    if-ltz v4, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/api/NotificationEntry;

    .line 269
    .local v0, "_e":Lcom/vkontakte/android/api/NotificationEntry;
    iget v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    .line 270
    iget-object v3, v0, Lcom/vkontakte/android/api/NotificationEntry;->extra:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 271
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    iget-object v5, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 272
    iget-object v5, p0, Lcom/vkontakte/android/fragments/NotificationsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 273
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->updateList()V

    goto :goto_0

    .line 276
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/NotificationEntry;>;"
    :cond_2
    iget v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    iget-object v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    if-nez v5, :cond_4

    :cond_3
    iget-object v2, v0, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    .line 277
    .local v2, "e":Lcom/vkontakte/android/NewsEntry;
    :goto_1
    if-nez v2, :cond_5

    .line 278
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v1, "args":Landroid/os/Bundle;
    const-string v6, "id"

    iget-object v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->users:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/UserProfile;

    iget v5, v5, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    const-string v5, "ProfileFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_0

    .line 276
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_4
    iget-object v2, v0, Lcom/vkontakte/android/api/NotificationEntry;->ppost:Lcom/vkontakte/android/NewsEntry;

    goto :goto_1

    .line 281
    .restart local v2    # "e":Lcom/vkontakte/android/NewsEntry;
    :cond_5
    iget v5, v2, Lcom/vkontakte/android/NewsEntry;->type:I

    if-ne v5, v7, :cond_6

    .line 282
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 283
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v5, "title"

    iget-object v6, v2, Lcom/vkontakte/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 284
    const-string v5, "gid"

    iget v6, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v5, "tid"

    iget v6, v2, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    const-string v5, "offset"

    iget v6, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    iget v7, v2, Lcom/vkontakte/android/NewsEntry;->numComments:I

    rem-int/lit8 v7, v7, 0x14

    sub-int/2addr v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    const-string v5, "BoardTopicViewFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 289
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 290
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string v5, "entry"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 291
    iget v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->parentType:I

    if-ne v5, v7, :cond_7

    .line 292
    const-string v5, "comment"

    iget-object v6, v0, Lcom/vkontakte/android/api/NotificationEntry;->parent:Lcom/vkontakte/android/NewsEntry;

    iget v6, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    :cond_7
    iget v5, v0, Lcom/vkontakte/android/api/NotificationEntry;->feedbackType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 294
    const-string v5, "comment"

    iget v6, v0, Lcom/vkontakte/android/api/NotificationEntry;->commentID:I

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    :cond_8
    const-string v5, "PostViewFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080201

    if-ne v0, v1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->showFilter()V

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
