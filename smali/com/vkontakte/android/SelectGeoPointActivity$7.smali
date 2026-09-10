.class Lcom/vkontakte/android/SelectGeoPointActivity$7;
.super Ljava/lang/Object;
.source "SelectGeoPointActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


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
    .line 222
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$7;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 5
    .param p1, "ll"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$7;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$800(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$7;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$800(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$7;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0, p1}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$002(Lcom/vkontakte/android/SelectGeoPointActivity;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 232
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$7;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$700(Lcom/vkontakte/android/SelectGeoPointActivity;DD)V

    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$7;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$600(Lcom/vkontakte/android/SelectGeoPointActivity;Z)V

    goto :goto_0
.end method
