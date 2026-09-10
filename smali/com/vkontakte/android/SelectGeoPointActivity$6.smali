.class Lcom/vkontakte/android/SelectGeoPointActivity$6;
.super Ljava/lang/Object;
.source "SelectGeoPointActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


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
    .line 216
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$6;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 2
    .param p1, "pos"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$6;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$302(Lcom/vkontakte/android/SelectGeoPointActivity;Z)Z

    .line 220
    return-void
.end method
