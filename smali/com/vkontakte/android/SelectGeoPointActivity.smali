.class public Lcom/vkontakte/android/SelectGeoPointActivity;
.super Lcom/vkontakte/android/CustomTitleMapActivity;
.source "SelectGeoPointActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;,
        Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;
    }
.end annotation


# instance fields
.field private gettingLocation:Z

.field private mapView:Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;

.field private myLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

.field private okBtn:Landroid/view/View;

.field private overlay:Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;

.field private selected:Z

.field private selectedPoint:Lcom/google/android/maps/GeoPoint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleMapActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->selectedPoint:Lcom/google/android/maps/GeoPoint;

    .line 41
    iput-boolean v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->selected:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->gettingLocation:Z

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SelectGeoPointActivity;Lcom/google/android/maps/GeoPoint;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->selectedPoint:Lcom/google/android/maps/GeoPoint;

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->overlay:Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/SelectGeoPointActivity;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->gettingLocation:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/SelectGeoPointActivity;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/vkontakte/android/SelectGeoPointActivity;->stopGettingLocation()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/SelectGeoPointActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/google/android/maps/GeoPoint;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->selectedPoint:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method private startGettingLocation()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->gettingLocation:Z

    .line 204
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 205
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 206
    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 207
    return-void
.end method

.method private stopGettingLocation()V
    .locals 2

    .prologue
    .line 210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->gettingLocation:Z

    .line 211
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 212
    .local v0, "locationManager":Landroid/location/LocationManager;
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 213
    return-void
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03003a

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->setContentView(I)V

    .line 49
    new-instance v0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;

    invoke-direct {v0, p0, p0}, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->setClickable(Z)V

    .line 51
    const v0, 0x7f060126

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    new-instance v0, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->myLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->myLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;

    invoke-virtual {v0}, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->myLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;

    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->overlay:Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;

    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;

    invoke-virtual {v0}, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->overlay:Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-direct {p0}, Lcom/vkontakte/android/SelectGeoPointActivity;->startGettingLocation()V

    .line 61
    const v0, 0x7f060044

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/SelectGeoPointActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/SelectGeoPointActivity$1;-><init>(Lcom/vkontakte/android/SelectGeoPointActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->myLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    .line 117
    iget-boolean v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->gettingLocation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/SelectGeoPointActivity;->stopGettingLocation()V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleMapActivity;->onDestroy()V

    .line 119
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-wide v5, 0x412e848000000000L    # 1000000.0

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "needMove":Z
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->selectedPoint:Lcom/google/android/maps/GeoPoint;

    if-nez v1, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 222
    :cond_0
    iget-boolean v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->selected:Z

    if-nez v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->okBtn:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 224
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->selectedPoint:Lcom/google/android/maps/GeoPoint;

    .line 225
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->mapView:Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;

    invoke-virtual {v1}, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity;->selectedPoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 232
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 234
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 236
    return-void
.end method
