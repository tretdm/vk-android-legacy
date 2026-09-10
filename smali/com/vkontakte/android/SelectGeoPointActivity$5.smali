.class Lcom/vkontakte/android/SelectGeoPointActivity$5;
.super Ljava/lang/Object;
.source "SelectGeoPointActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SelectGeoPointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SelectGeoPointActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SelectGeoPointActivity;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$5;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyLocationChange(Landroid/location/Location;)V
    .locals 7
    .param p1, "ml"    # Landroid/location/Location;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$5;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$300(Lcom/vkontakte/android/SelectGeoPointActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$5;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$400(Lcom/vkontakte/android/SelectGeoPointActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$5;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$500(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$5;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1, v2}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$002(Lcom/vkontakte/android/SelectGeoPointActivity;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$5;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$400(Lcom/vkontakte/android/SelectGeoPointActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$5;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$600(Lcom/vkontakte/android/SelectGeoPointActivity;Z)V

    .line 211
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$5;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$700(Lcom/vkontakte/android/SelectGeoPointActivity;DD)V

    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$5;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$402(Lcom/vkontakte/android/SelectGeoPointActivity;Z)Z

    .line 214
    :cond_2
    return-void
.end method
