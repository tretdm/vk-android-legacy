.class Lcom/vkontakte/android/CheckInActivity$5;
.super Ljava/lang/Object;
.source "CheckInActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CheckInActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CheckInActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CheckInActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CheckInActivity$5;->this$0:Lcom/vkontakte/android/CheckInActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyLocationChange(Landroid/location/Location;)V
    .locals 10
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    .line 149
    new-instance v2, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    .line 150
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v2

    .line 151
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 154
    .local v0, "cp":Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$5;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CheckInActivity;->access$5(Lcom/vkontakte/android/CheckInActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 157
    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$5;->this$0:Lcom/vkontakte/android/CheckInActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/CheckInActivity;->access$6(Lcom/vkontakte/android/CheckInActivity;Z)V

    .line 159
    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$5;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CheckInActivity;->access$7(Lcom/vkontakte/android/CheckInActivity;)Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$5;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CheckInActivity;->access$7(Lcom/vkontakte/android/CheckInActivity;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 161
    .local v1, "dist":F
    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$5;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CheckInActivity;->access$7(Lcom/vkontakte/android/CheckInActivity;)Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpl-float v2, v2, v8

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpg-float v2, v2, v8

    if-gez v2, :cond_1

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$5;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2, p1}, Lcom/vkontakte/android/CheckInActivity;->access$8(Lcom/vkontakte/android/CheckInActivity;Landroid/location/Location;)V

    .line 163
    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$5;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CheckInActivity;->access$3(Lcom/vkontakte/android/CheckInActivity;)Lcom/actionbarsherlock/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$5;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2, v9}, Lcom/vkontakte/android/CheckInActivity;->access$4(Lcom/vkontakte/android/CheckInActivity;Ljava/lang/String;)V

    .line 168
    .end local v1    # "dist":F
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$5;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CheckInActivity;->access$7(Lcom/vkontakte/android/CheckInActivity;)Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_2

    .line 169
    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$5;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2, p1}, Lcom/vkontakte/android/CheckInActivity;->access$8(Lcom/vkontakte/android/CheckInActivity;Landroid/location/Location;)V

    .line 170
    iget-object v2, p0, Lcom/vkontakte/android/CheckInActivity$5;->this$0:Lcom/vkontakte/android/CheckInActivity;

    invoke-static {v2, v9}, Lcom/vkontakte/android/CheckInActivity;->access$4(Lcom/vkontakte/android/CheckInActivity;Ljava/lang/String;)V

    .line 172
    :cond_2
    return-void
.end method
