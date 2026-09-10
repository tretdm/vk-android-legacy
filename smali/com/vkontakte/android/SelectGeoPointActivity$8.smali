.class Lcom/vkontakte/android/SelectGeoPointActivity$8;
.super Ljava/lang/Object;
.source "SelectGeoPointActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SelectGeoPointActivity;->initMarker(DD)V
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$8;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 265
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2
    .param p1, "m"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$8;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$6(Lcom/vkontakte/android/SelectGeoPointActivity;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 259
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 254
    return-void
.end method
