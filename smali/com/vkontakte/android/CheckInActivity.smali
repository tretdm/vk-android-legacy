.class public Lcom/vkontakte/android/CheckInActivity;
.super Lcom/vkontakte/android/VKActivity;
.source "CheckInActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/CheckInActivity$SearchLoader;,
        Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;,
        Lcom/vkontakte/android/CheckInActivity$ViewHolder;,
        Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;
    }
.end annotation


# static fields
.field private static final CHECKIN_RESULT:I = 0x2099

.field private static final CREATE_PLACE_RESULT:I = 0x209a


# instance fields
.field private adapter:Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;

.field private addPlace:Lcom/vkontakte/android/GeoPlace;

.field private currentLocation:Lcom/vkontakte/android/GeoPlace;

.field private currentRequest:Lcom/vkontakte/android/APIRequest;

.field private firstLocationUpdate:Z

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private list:Landroid/widget/ListView;

.field private map:Lcom/google/android/gms/maps/GoogleMap;

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private nearPlaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/GeoPlace;",
            ">;"
        }
    .end annotation
.end field

.field private places:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/GeoPlace;",
            ">;"
        }
    .end annotation
.end field

.field private prevLocation:Landroid/location/Location;

.field private progress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

.field private searchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/GeoPlace;",
            ">;"
        }
    .end annotation
.end field

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/vkontakte/android/VKActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/CheckInActivity;->firstLocationUpdate:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->nearPlaces:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->searchResults:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/vkontakte/android/GeoPlace;

    invoke-direct {v0}, Lcom/vkontakte/android/GeoPlace;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->currentLocation:Lcom/vkontakte/android/GeoPlace;

    new-instance v0, Lcom/vkontakte/android/GeoPlace;

    invoke-direct {v0}, Lcom/vkontakte/android/GeoPlace;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->addPlace:Lcom/vkontakte/android/GeoPlace;

    .line 514
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/CheckInActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/CheckInActivity;)Lcom/google/android/gms/maps/MapView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/CheckInActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/vkontakte/android/CheckInActivity;->firstLocationUpdate:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/CheckInActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->searchRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/vkontakte/android/CheckInActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity;->searchRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->searchResults:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->progress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->nearPlaces:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/CheckInActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/vkontakte/android/CheckInActivity;->updateList()V

    return-void
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/GeoPlace;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->currentLocation:Lcom/vkontakte/android/GeoPlace;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity;->currentRequest:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/CheckInActivity;)Landroid/location/Location;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->prevLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkontakte/android/CheckInActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity;->prevLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->searchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/CheckInActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/vkontakte/android/CheckInActivity;->loadData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/CheckInActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/CheckInActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->places:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vkontakte/android/CheckInActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity;->places:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/vkontakte/android/CheckInActivity;)Lcom/vkontakte/android/GeoPlace;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/CheckInActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->addPlace:Lcom/vkontakte/android/GeoPlace;

    return-object v0
.end method

.method private loadData(Ljava/lang/String;)V
    .locals 8
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 351
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->prevLocation:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 417
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->progress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->places:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v5

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 356
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->currentLocation:Lcom/vkontakte/android/GeoPlace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity;->prevLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity;->prevLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    .line 357
    invoke-direct {p0}, Lcom/vkontakte/android/CheckInActivity;->updateList()V

    .line 358
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/CheckInActivity$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CheckInActivity$9;-><init>(Lcom/vkontakte/android/CheckInActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 392
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->progress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 394
    :cond_2
    new-instance v0, Lcom/vkontakte/android/api/PlacesSearch;

    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->prevLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/vkontakte/android/CheckInActivity;->prevLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    if-eqz p1, :cond_5

    const/4 v5, 0x3

    :cond_3
    :goto_2
    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/api/PlacesSearch;-><init>(DDILjava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/CheckInActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/CheckInActivity$10;-><init>(Lcom/vkontakte/android/CheckInActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PlacesSearch;->setCallback(Lcom/vkontakte/android/api/PlacesSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->currentRequest:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 355
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 394
    :cond_5
    iget-object v6, p0, Lcom/vkontakte/android/CheckInActivity;->prevLocation:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    const/4 v5, 0x2

    goto :goto_2
.end method

.method private updateList()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->adapter:Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;->notifyDataSetChanged()V

    .line 421
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 422
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 340
    if-ne p2, v1, :cond_0

    const/16 v0, 0x2099

    if-ne p1, v0, :cond_0

    .line 341
    invoke-virtual {p0, v1, p3}, Lcom/vkontakte/android/CheckInActivity;->setResult(ILandroid/content/Intent;)V

    .line 342
    invoke-virtual {p0}, Lcom/vkontakte/android/CheckInActivity;->finish()V

    .line 344
    :cond_0
    if-ne p2, v1, :cond_1

    const/16 v0, 0x209a

    if-ne p1, v0, :cond_1

    .line 345
    invoke-virtual {p0, v1, p3}, Lcom/vkontakte/android/CheckInActivity;->setResult(ILandroid/content/Intent;)V

    .line 346
    invoke-virtual {p0}, Lcom/vkontakte/android/CheckInActivity;->finish()V

    .line 348
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v1, "com.google.android.apps.maps"

    invoke-static {p0, v1}, Lcom/vkontakte/android/Global;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CheckInActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d015e

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0d015f

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0d01d5

    new-instance v4, Lcom/vkontakte/android/CheckInActivity$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/CheckInActivity$3;-><init>(Lcom/vkontakte/android/CheckInActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0d0073

    new-instance v4, Lcom/vkontakte/android/CheckInActivity$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/CheckInActivity$2;-><init>(Lcom/vkontakte/android/CheckInActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/vkontakte/android/CheckInActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/CheckInActivity$1;-><init>(Lcom/vkontakte/android/CheckInActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 305
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->nearPlaces:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->places:Ljava/util/ArrayList;

    .line 105
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    .line 106
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 107
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/vkontakte/android/CheckInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 110
    .local v2, "pad":I
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    new-instance v3, Lcom/vkontakte/android/ui/PaddingColorDrawable;

    const v4, -0x19191a

    div-int/lit8 v5, v2, 0x2

    invoke-direct {v3, v4, v5}, Lcom/vkontakte/android/ui/PaddingColorDrawable;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 114
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/maps/MapsInitializer;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    new-instance v1, Lcom/vkontakte/android/CheckInActivity$4;

    new-instance v3, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v3

    invoke-direct {v1, p0, p0, v3}, Lcom/vkontakte/android/CheckInActivity$4;-><init>(Lcom/vkontakte/android/CheckInActivity;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    iput-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 133
    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/vkontakte/android/CheckInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v7, v1, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 134
    .local v7, "mlp":Landroid/widget/AbsListView$LayoutParams;
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/maps/MapView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 136
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 137
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_2

    .line 138
    const v1, 0x7f0d00d0

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 139
    invoke-virtual {p0}, Lcom/vkontakte/android/CheckInActivity;->finish()V

    goto/16 :goto_0

    .line 115
    .end local v7    # "mlp":Landroid/widget/AbsListView$LayoutParams;
    :catch_0
    move-exception v6

    .line 116
    .local v6, "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    const v1, 0x7f0d00d0

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 117
    invoke-virtual {p0}, Lcom/vkontakte/android/CheckInActivity;->finish()V

    goto/16 :goto_0

    .line 142
    .end local v6    # "e":Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
    .restart local v7    # "mlp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/vkontakte/android/CheckInActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/CheckInActivity$5;-><init>(Lcom/vkontakte/android/CheckInActivity;)V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/GoogleMap;->setOnMyLocationChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;)V

    .line 176
    new-instance v1, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->progress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 177
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkontakte/android/CheckInActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 178
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/vkontakte/android/CheckInActivity;->progress:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 180
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/CheckInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x7f020077

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .local v0, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 181
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 182
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    new-instance v3, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;-><init>(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/CheckInActivity$1;)V

    iput-object v3, p0, Lcom/vkontakte/android/CheckInActivity;->adapter:Lcom/vkontakte/android/CheckInActivity$PlacesAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CheckInActivity;->setContentView(Landroid/view/View;)V

    .line 184
    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v3, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vkontakte/android/CheckInActivity$PlacePhotosAdapter;-><init>(Lcom/vkontakte/android/CheckInActivity;Lcom/vkontakte/android/CheckInActivity$1;)V

    iget-object v4, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 185
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->currentLocation:Lcom/vkontakte/android/GeoPlace;

    const v3, 0x7f0d0098

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/CheckInActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/vkontakte/android/GeoPlace;->title:Ljava/lang/String;

    .line 186
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->currentLocation:Lcom/vkontakte/android/GeoPlace;

    const/4 v3, -0x1

    iput v3, v1, Lcom/vkontakte/android/GeoPlace;->id:I

    .line 187
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->currentLocation:Lcom/vkontakte/android/GeoPlace;

    const v3, 0x7f0d0156

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/CheckInActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/vkontakte/android/GeoPlace;->address:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->addPlace:Lcom/vkontakte/android/GeoPlace;

    const v3, 0x7f0d0017

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/CheckInActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/vkontakte/android/GeoPlace;->title:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->addPlace:Lcom/vkontakte/android/GeoPlace;

    const/4 v3, -0x2

    iput v3, v1, Lcom/vkontakte/android/GeoPlace;->id:I

    .line 190
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->places:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vkontakte/android/CheckInActivity;->currentLocation:Lcom/vkontakte/android/GeoPlace;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->list:Landroid/widget/ListView;

    new-instance v3, Lcom/vkontakte/android/CheckInActivity$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/CheckInActivity$6;-><init>(Lcom/vkontakte/android/CheckInActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 234
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v3, Lcom/vkontakte/android/CheckInActivity$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/CheckInActivity$7;-><init>(Lcom/vkontakte/android/CheckInActivity;)V

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 256
    new-instance v1, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/CheckInActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->searchView:Landroid/widget/SearchView;

    .line 257
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/CheckInActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0278

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 259
    :try_start_1
    const-class v1, Landroid/widget/SearchView;

    const-string v3, "mSearchButton"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 260
    .local v9, "searchField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 261
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 262
    .local v8, "searchBtn":Landroid/widget/ImageView;
    const v1, 0x7f02008d

    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    const-class v1, Landroid/widget/SearchView;

    const-string v3, "mSearchPlate"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 264
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 265
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 266
    .local v10, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, -0x7f000001

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    .end local v8    # "searchBtn":Landroid/widget/ImageView;
    .end local v9    # "searchField":Ljava/lang/reflect/Field;
    .end local v10    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->searchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/vkontakte/android/CheckInActivity$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/CheckInActivity$8;-><init>(Lcom/vkontakte/android/CheckInActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    goto/16 :goto_0

    .line 267
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 308
    const v1, 0x7f0d0278

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 309
    .local v0, "search":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 310
    iget-object v1, p0, Lcom/vkontakte/android/CheckInActivity;->searchView:Landroid/widget/SearchView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 311
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcom/vkontakte/android/VKActivity;->onDestroy()V

    .line 333
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 337
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Lcom/vkontakte/android/VKActivity;->onPause()V

    .line 316
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 320
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lcom/vkontakte/android/VKActivity;->onResume()V

    .line 324
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/vkontakte/android/CheckInActivity;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 329
    :cond_0
    return-void
.end method
