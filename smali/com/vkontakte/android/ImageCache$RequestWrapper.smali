.class public Lcom/vkontakte/android/ImageCache$RequestWrapper;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestWrapper"
.end annotation


# instance fields
.field public decode:Z

.field public request:Lorg/apache/http/client/methods/HttpGet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->decode:Z

    return-void
.end method
