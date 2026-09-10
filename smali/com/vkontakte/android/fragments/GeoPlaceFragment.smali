.class public Lcom/vkontakte/android/fragments/GeoPlaceFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "GeoPlaceFragment.java"


# instance fields
.field private att:Lcom/vkontakte/android/GeoAttachment;

.field private currentRequest:Lcom/vkontakte/android/APIRequest;

.field private groupPhoto:Ljava/lang/String;

.field private groupStatus:Ljava/lang/String;

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private noMaps:Z

.field private place:Lcom/vkontakte/android/GeoPlace;

.field private userPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupPhoto:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupStatus:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->userPhotos:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->noMaps:Z

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoPlace;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Lcom/vkontakte/android/GeoAttachment;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateUserPhotos()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateFieldsVisibility()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->userPhotos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Lcom/vkontakte/android/GeoPlace;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->userPhotos:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupStatus:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupPhoto:Ljava/lang/String;

    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    .line 276
    new-instance v0, Lcom/vkontakte/android/api/PlacesGetInfo;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget v1, v1, Lcom/vkontakte/android/GeoAttachment;->id:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/PlacesGetInfo;-><init>(I)V

    .line 277
    new-instance v1, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$11;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PlacesGetInfo;->setCallback(Lcom/vkontakte/android/api/PlacesGetInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 276
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 299
    return-void
.end method

.method private updateFieldsVisibility()V
    .locals 7

    .prologue
    const v6, 0x7f09013e

    const v5, 0x7f09013d

    const v4, 0x7f09013c

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    iget v0, v0, Lcom/vkontakte/android/GeoPlace;->checkins:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    iget-object v0, v0, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    iget-object v0, v0, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 232
    goto :goto_0

    :cond_2
    move v0, v2

    .line 233
    goto :goto_1

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateUserPhotos()V
    .locals 6

    .prologue
    const/high16 v5, 0x420c0000    # 35.0f

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->userPhotos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateVisiblePhotos()V

    .line 250
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$10;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 272
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 273
    return-void

    .line 243
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 244
    .local v1, "iv":Landroid/widget/ImageView;
    const v3, 0x7f02027c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 246
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 247
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    const v4, 0x7f09013f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateVisiblePhotos()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GeoPlaceFragment$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$9;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 229
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "point"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/GeoAttachment;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    .line 58
    const v0, 0x7f0800fb

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 60
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.google.android.apps.maps"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Global;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    const v1, 0x7f080230

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 63
    const v1, 0x7f080231

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 64
    const v1, 0x7f080232

    new-instance v2, Lcom/vkontakte/android/fragments/GeoPlaceFragment$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$1;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 73
    const v1, 0x7f080100

    new-instance v2, Lcom/vkontakte/android/fragments/GeoPlaceFragment$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$2;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/vkontakte/android/fragments/GeoPlaceFragment$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$3;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->noMaps:Z

    .line 89
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateVisiblePhotos()V

    .line 210
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 196
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->loadData()V

    .line 197
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f09013b

    const v10, 0x7f09013a

    const v9, 0x7f090139

    const v8, 0x7f090138

    const/4 v5, 0x0

    .line 92
    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->noMaps:Z

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 179
    :goto_0
    return-object v2

    .line 93
    :cond_0
    const v2, 0x7f03006e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "com.google.android.apps.maps"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Global;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    goto :goto_0

    .line 96
    :cond_2
    new-instance v2, Lcom/vkontakte/android/fragments/GeoPlaceFragment$4;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$4;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 101
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2, p3}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    .line 107
    .local v1, "map":Lcom/google/android/gms/maps/GoogleMap;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 108
    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 109
    new-instance v2, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v4, v4, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-object v6, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v6, v6, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 110
    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v4, v4, Lcom/vkontakte/android/GeoAttachment;->lat:D

    iget-object v6, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget-wide v6, v6, Lcom/vkontakte/android/GeoAttachment;->lon:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 112
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/GeoAttachment;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    const v3, 0x7f09013c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->att:Lcom/vkontakte/android/GeoAttachment;

    iget-object v3, v3, Lcom/vkontakte/android/GeoAttachment;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->groupStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    const v3, 0x7f090140

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateUserPhotos()V

    .line 117
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->updateFieldsVisibility()V

    .line 119
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$5;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checkin"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/GeoPlaceFragment$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$6;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :goto_3
    new-instance v0, Lcom/vkontakte/android/fragments/GeoPlaceFragment$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$7;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    .line 165
    .local v0, "clickListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    const v3, 0x7f090137

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    const v3, 0x7f09013f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/fragments/GeoPlaceFragment$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/GeoPlaceFragment$8;-><init>(Lcom/vkontakte/android/fragments/GeoPlaceFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    goto/16 :goto_0

    .line 115
    .end local v0    # "clickListener":Landroid/view/View$OnClickListener;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->place:Lcom/vkontakte/android/GeoPlace;

    iget v4, v4, Lcom/vkontakte/android/GeoPlace;->checkins:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 154
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 104
    .end local v1    # "map":Lcom/google/android/gms/maps/GoogleMap;
    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 205
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 305
    :cond_0
    iput-object v1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->view:Landroid/view/View;

    .line 306
    iput-object v1, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 307
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 186
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GeoPlaceFragment;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 192
    :cond_0
    return-void
.end method
