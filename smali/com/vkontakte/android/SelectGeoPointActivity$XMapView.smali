.class Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;
.super Lcom/google/android/maps/MapView;
.source "SelectGeoPointActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/SelectGeoPointActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XMapView"
.end annotation


# instance fields
.field click:Z

.field startX:F

.field startY:F

.field final synthetic this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

.field touchslop:F


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/SelectGeoPointActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    .line 126
    const-string v0, "0-4Pe-1zDvHievqW9VRpbjpY2RxxWY2Gu-5bZ_w"

    invoke-direct {p0, p2, v0}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->click:Z

    .line 127
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->touchslop:F

    .line 128
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->startX:F

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->startY:F

    .line 134
    iput-boolean v4, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->click:Z

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 137
    iget v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->touchslop:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->touchslop:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 138
    :cond_1
    iput-boolean v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->click:Z

    .line 140
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 141
    iget v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->touchslop:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->startY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->touchslop:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 142
    :cond_3
    iput-boolean v2, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->click:Z

    .line 143
    :cond_4
    iget-boolean v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->click:Z

    if-eqz v0, :cond_6

    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$0(Lcom/vkontakte/android/SelectGeoPointActivity;Lcom/google/android/maps/GeoPoint;)V

    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$1(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->updateOverlay()V

    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$2(Lcom/vkontakte/android/SelectGeoPointActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$3(Lcom/vkontakte/android/SelectGeoPointActivity;)V

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$XMapView;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v0}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$4(Lcom/vkontakte/android/SelectGeoPointActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 151
    :cond_6
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
