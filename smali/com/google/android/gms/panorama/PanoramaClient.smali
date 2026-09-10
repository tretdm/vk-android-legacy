.class public Lcom/google/android/gms/panorama/PanoramaClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;,
        Lcom/google/android/gms/panorama/PanoramaClient$a;
    }
.end annotation


# instance fields
.field private final gC:Lcom/google/android/gms/internal/ds;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionCallbacks"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .param p3, "connectionFailedListener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ds;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ds;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->disconnect()V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ds;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ds;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ds;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public loadPanoramaInfo(Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;Landroid/net/Uri;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ds;->a(Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;Landroid/net/Uri;Z)V

    return-void
.end method

.method public loadPanoramaInfoAndGrantAccess(Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;Landroid/net/Uri;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ds;->a(Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;Landroid/net/Uri;Z)V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ds;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ds;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ds;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->gC:Lcom/google/android/gms/internal/ds;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ds;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method
