.class public Lcom/vkontakte/android/api/PhotoAlbum;
.super Ljava/lang/Object;
.source "PhotoAlbum.java"


# static fields
.field public static final PRIVACY_ALL:I = 0x0

.field public static final PRIVACY_EXTENDED:I = 0x4

.field public static final PRIVACY_FRIENDS:I = 0x1

.field public static final PRIVACY_ME:I = 0x3

.field public static final PRIVACY_UNKNOWN:I = -0x1

.field public static final PRIVACY_XFRIENDS:I = 0x2


# instance fields
.field public canUpload:Z

.field public created:I

.field public descr:Ljava/lang/String;

.field public id:I

.field public numPhotos:I

.field public oid:I

.field public privacy:I

.field public thumbURL:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public updated:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
