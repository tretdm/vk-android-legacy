.class public Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "SelectGeoPointActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/SelectGeoPointActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapOverlayProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vkontakte/android/SelectGeoPointActivity;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/SelectGeoPointActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p2, "defaultMarker"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    .line 161
    invoke-static {p2}, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->mOverlays:Ljava/util/ArrayList;

    .line 158
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->populate()V

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/SelectGeoPointActivity;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 1
    .param p2, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    .line 166
    invoke-direct {p0, p2}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->mOverlays:Ljava/util/ArrayList;

    .line 158
    iput-object p1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->mContext:Landroid/content/Context;

    .line 167
    iput-object p3, p0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->populate()V

    .line 169
    return-void
.end method


# virtual methods
.method public _populate()V
    .locals 0

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->populate()V

    .line 199
    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/maps/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 195
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updateOverlay()V
    .locals 4

    .prologue
    .line 182
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->this$0:Lcom/vkontakte/android/SelectGeoPointActivity;

    invoke-static {v1}, Lcom/vkontakte/android/SelectGeoPointActivity;->access$5(Lcom/vkontakte/android/SelectGeoPointActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .local v0, "item":Lcom/google/android/maps/OverlayItem;
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 185
    iget-object v1, p0, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {p0}, Lcom/vkontakte/android/SelectGeoPointActivity$MapOverlayProvider;->populate()V

    .line 187
    return-void
.end method
